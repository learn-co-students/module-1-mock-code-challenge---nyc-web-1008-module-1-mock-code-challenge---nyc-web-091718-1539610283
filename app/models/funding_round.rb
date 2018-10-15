class FundingRound
  attr_accessor :type
  attr_reader :startup, :venture_capitalist, :investment

  @@all = []

  def initialize(startup, venture_capitalist)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    @investment = investment
    @@all << self
  end

  def self.all
    @@all
  end

  def investment=(investment)
    unless investment.class == Float && investment > 0
      return "Investment must be a positive float"
    else
      @investment = investment
    end
  end

end # end of funding round class
