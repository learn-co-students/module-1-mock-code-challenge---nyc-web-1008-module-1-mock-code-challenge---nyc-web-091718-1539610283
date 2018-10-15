require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Startup.new("AsOneWeds", "Sarah", "shopify")
p2 = Startup.new("Cookies", "Eric", "shopify")
p2 = Startup.new("Cookies", "Jay", "Ecom")
p2 = Startup.new("Shoes4me", "Jasmine", "Storefront")
p2.domain
p1.domain

v1 = VentureCapitalist.new("Trés Commas club")
v2 = VentureCapitalist.new("Commas house")

f1 = FundingRound.new("AOW")
f1.startup("AOW")
f1.






# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
