class FundingRound
  attr_reader :investor, :startup, :vc, :type, :amount

  @@all = []
  def initialize(investor, startup, type, amount)
    @investor = investor
    @startup = startup
    @type = type
    @amount = amount
    @@all << self
  end

def venture_capitalist
    @investor
  end

  def investment
    @amount
  end

def self.all
  @@all
end
end #clsend
