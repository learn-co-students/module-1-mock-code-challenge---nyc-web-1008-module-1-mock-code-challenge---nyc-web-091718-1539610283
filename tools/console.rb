require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Startup.new("Dropbox","Drew","Storage")
s2 = Startup.new("Facebook","Mark","Social")
s3 = Startup.new("Amazon","Jeff","Retail")

vc1 = VentureCapitalist.new("Sequoia",true)
vc2 = VentureCapitalist.new("Accel",true)
vc3 = VentureCapitalist.new("Tencent",false)

f1 = FundingRound.new(s1,vc1,"Angel",1000)
f2 = FundingRound.new(s2,vc2,"Seed",2000)
f3 = FundingRound.new(s3,vc3,"Series B",3000)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
