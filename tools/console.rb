require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



facebook = Startup.new("facebook", "zuc", "social")
hooli = Startup.new("hooli", "gavin", "search")
pied = Startup.new("pied", "rich", "compression")

angel = VentureCapitalist.new("angel")
branson = VentureCapitalist.new("branson")

rnd1 = facebook.sign_contract("series-a", 500000, branson)
rnd2 = branson.offer_contract("angel", 2000000, pied)
rnd3 = angel.offer_contract("series-b", 10000, hooli)
rnd4 = pied.sign_contract("series-a", 10000000, angel)

















binding.pry
0 #leave this here to ensure binding.pry isn't the last line
