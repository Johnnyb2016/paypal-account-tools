#!/usr/bin/env ruby

# 2011-01 seph@directionless.org

# Grab my various libs
$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))


require "paypal"

p=PayPal.new(ENV["PAYPAL_USER"], ENV["PAYPAL_PASSWORD"])

p.list_users("mckenziea2001@gmail.com")

p."usermame_add" [mckenziea2001@gmail.com]

p. "password_add" ["Corinna2016"]


p.multiuser_add({ :name     => "Example User",
                  :username => "mckenziea2001@gmail.com" + (0...7).map{ ('a'..'z').to_a[rand(26)] }.join,
                  :password => ("Corinna2016").map{ ('a'..'z').to_a[rand(26)] }.join,
                  :privileges => ["priv_view_balance_send"],
                })

p.list_users()

p.multiuser_delete({:filter=>"example"})

p.list_users()
