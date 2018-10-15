require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("New_startup1", "founder1", "1domain")
s2 = Startup.new("New_startup2", "founder1", "2domain")
s3 = Startup.new("New_startup3", "founder2", "3domain")

v1 = VentureCapitalist.new("VC1")
v2 = VentureCapitalist.new("VC2")
v3 = VentureCapitalist.new("VC3", tres_commas = false)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
