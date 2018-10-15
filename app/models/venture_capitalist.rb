

class VentureCapitalist

  attr_accessor :name, :tres_commas, :total_funds


  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @portfolio = []
    @tres_commas = []
    @total_funds = 0
    @@all << self
  end

# returns a **boolean** stating whether or not the venture capitalist is in the Trés Commas club
  def tres_commas(name)
    self.all.select { |co| co.has_key?(tres_commas) }
    # tres_arr = self.tres_commas_club
    # tres_arr.include?(name)
  end

# returns an array of all venture capitalists in the Trés Commas club
  def self.tres_commas_club
    self.all.select { |vc| tres_commas(vc) }
  end

# - given a **startup object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
  def offer_contract(startup_obj, investment_type, amount)
    round = FundingRound.new(startup_obj, investment_type, amount, self)
    round.venture_capitalist = self
    round.startup = startup_obj
    @funding_rounds << round
    @portfolio << startup_obj
    @total_funds += amount
  end

  def funding_rounds
    FundingRound.all.select { |co| co.venture_capitalist == self }
  end

 # Returns a **unique** list of all startups this venture capitalist has funded
  def portfolio
    # funds = FundingRound.all.select { |fund| fund.venture_capitalist = self }
    funds = funding_rounds
    funds.all.map { |fund| fund.startup }
  end

# returns the largest funding round given by this venture capitalist
  def biggest_investment
    money = FundingRound.all.select { |dollar| dollar.amount == self }
    max(money)
  end

# given a **domain string**, returns the total amount invested in that domain
  def invested(domain)
    funding = FundingRound.all.select { |fund| fund.venture_capitalist == self }
    funding.all.map { |fund| fund.domain.total_funds  }
  end
end
