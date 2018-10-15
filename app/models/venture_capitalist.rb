class VentureCapitalist
  attr_reader :name, :three_commas, :funding_rounds, :portfolio, :total_invested
  @@all = []
  def initialize(name, three_commas)
    @name = name
    @three_commas = three_commas
    @@all << self
  end

  def self.all
    @@all
  end

  def tres_commas?
    @three_commas
  end

  def self.tres_commas_club
    VentureCapitalist.all.select {|person| person.tres_commas?}
  end

  def offer_contract(startup, type, amt)
    round = FundingRound.new(self, startup, type, amt)
    @funding_rounds << round
    @portfolio << startup
    @total_invested += amt
    return round
  end

def invested
  @total_invested
end

#missed biggest_investment
end #clsend
