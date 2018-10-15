require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("Hoolie", "Belfort", "Social")
s2 = Startup.new("Pied Piper", "Ethan", "New Internet")
s3 = Startup.new("Aviato", "Erlic", "Travel")
s4 = Startup.new("Facebook", "Zuckerberg", "Social")

vc1 = VentureCapitalist.new("1 uncombinator")
vc2 = VentureCapitalist.new("y combinator", true)
vc3 = VentureCapitalist.new("Lori Fund", true)

f1 = FundingRound(s1, vc1, "Angel", 150000.0)
f2 = FundingRound(s1, vc2, "Pre-seed", 22000.0)
f3 = FundingRound(s3, vc3, "Seed", 10.0)
f4 = FundingRound(s1, vc3, "Series A", 10000.0)
f5 = FundingRound(s1, vc1, "Series B", 150000.0)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
