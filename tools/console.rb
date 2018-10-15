require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("Pied Piper", "Richard", "Middle Out algos")
s2 = Startup.new("Hooli", "Gavin", "Facebook, basically")
s3 = Startup.new("Jinyang's Pied Piper Clone", "Jinyang", "Middle Out algos")

vc1 = VentureCapitalist.new("Aviato", false)
vc2 = VentureCapitalist.new("Lambourgini guy", true)
vc3 = VentureCapitalist.new("Laurie", true)
vc4 = VentureCapitalist.new("Guy who died after season 1 :(", true)

s1.sign_contract(vc1, "Pre-Seed", 1000.0)
s1.sign_contract(vc2, "Series A", 1000000.0)
s1.sign_contract(vc3, "Series A", 1000000.0)
s1.sign_contract(vc3, "Series B", 2000000.0)

vc1.offer_contract(s2, "Negative money", -10000.0)
vc1.offer_contract(s1, "Angel", 10000.0)
vc2.offer_contract(s2, "Takeover", 1000000000.0)
vc4.offer_contract(s1, "Seed", 10000.0)

vc1.offer_contract(s3, "Angel", 5000000.0)
vc1.offer_contract(s2, "A present", 5.0)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
