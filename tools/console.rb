require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1 = Startup.new("Flatiron", "Avi Flombaum", "flatironschool.com")
s2 = Startup.new("WeWork", "Adam Neumann", "wework.com")
s3 = Startup.new("Airbnb", "Brian Chesky", "airbnb.com")

vc1 = VentureCapitalist.new("Mike Cheng")
vc2 = VentureCapitalist.new("Laura Kim")
vc3 = VentureCapitalist.new("Steven Balasta")

vc2.tres_commas = true

fr1 = FundingRound.new(s1, vc1)
fr2 = FundingRound.new(s2, vc2)
fr3 = FundingRound.new(s3, vc3)

fr1.type = "Series A"
fr2.type = "Series A"
fr3.type = "Series B"

fr1.investment = 10000.0
fr2.investment = 50000.0
fr3.investment = -100.0

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
