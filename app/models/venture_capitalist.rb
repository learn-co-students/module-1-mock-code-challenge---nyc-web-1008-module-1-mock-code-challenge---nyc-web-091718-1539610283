class VentureCapitalist
  attr_reader :name, :tres_commas

  @@all = []

  def initialize(name, tres_commas)
    @name = name
    @tres_commas = tres_commas
    @@all << self
  end

  def offer_contract(startup, type_of_investment, amount_invested)
    FundingRound.new(startup, self, type_of_investment, amount_invested)
  end

  def funding_rounds
    FundingRound.all.select{|funding_round| funding_round.venture_capitalist == self}
  end

  def portfolio
    funding_rounds.map{|funding_round| funding_round.startup}.uniq
  end

  def biggest_investment
    funding_rounds.sort_by{|funding_round| funding_round.investment}.reverse[0]
  end

  def invested(domain)
    funding_rounds.select{|funding_round| funding_round.startup.domain == domain}.map{|funding_round| funding_round.investment}.reduce(:+)
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    self.all.select{|vc| vc.tres_commas}
  end

end
