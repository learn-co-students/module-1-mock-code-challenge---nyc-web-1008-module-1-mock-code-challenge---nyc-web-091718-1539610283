class FundingRound
  attr_accessor :type 
  attr_reader :startup, :venture_capitalist
  @@all = []

  def initialize(startup, venture_capitalist, type, amount)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    @amount = amount
    @@all << self 
  end 

  def self.all 
    @@all
  end 

  def investment 
    @amount
  end 
end
