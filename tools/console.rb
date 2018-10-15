require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

startup = Startup.new("Sydney", "NY", "Uber")
venture_capitalist = VentureCapitalist.new("Tori", 1000000000)

funding_round = FundingRound.new("Tori", "Angel", 1000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
