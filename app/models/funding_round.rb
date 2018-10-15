class FundingRound

attr_accessor :VentureCapitalist
attr_reader :name, :startup

@@all = []
def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def startup(name)
  FundingRound.new(name)
#is this suppose to return the startup Object from the startup instance class?
end

def venture_capitalist(name)
  FundingRound.new(name)
  #is this suppose to return the startup Object from the startup instance class?

end

def type(type)


end

end #end of FundingRound class
