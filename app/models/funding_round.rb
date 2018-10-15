class FundingRound

  @@all = []

  attr_accessor :type, :amount, :startup, :venture_capitalist

  def initialize(type, amount=0, startup, venture_capitalist)
    @type = type
    @amount = amount
    @startup = startup
    @venture_capitalist = venture_capitalist
    @@all << self
  end

  def self.all
    @@all
  end

  def investment
    @amount
  end


end
