require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

a1 = Startup.new("Brian", "Google")
a2 = Startup.new("Brian", "Facebook")
a3 = Startup.new("Katharine", "Reddit")
a4 = Startup.new("Katharine", "Instagram")

b1 = VentureCapitalist.new
b2 = VentureCapitalist.new
b3 = VentureCapitalist.new

c1 = FundingRound.new(a1, b1)
c2 = FundingRound.new(a2, b3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
