require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Startup.new("fobfob", "Mark Pritchard", "www.fobfob.com")

s1.pivot("www.flobslob.com", "flobslob")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
