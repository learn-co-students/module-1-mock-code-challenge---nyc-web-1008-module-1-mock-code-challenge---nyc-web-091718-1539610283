class VentureCapitalist

  attr_accessor :name, :net_worth

  @@all = []
  @@tres_commas_club = []

  def initialize(name, net_worth)
    @name = name
    @net_worth = net_worth
    @@all << self
    if @net_worth >= 1000000000
      @@tres_commas_club << self
    end
  end

  def self.all
    @@all
  end

  def tres_commas
    @net_worth >= 1000000000
  end

  def self.tres_commas_club
    @@tres_commas_club
  end

  def offer_contract(startup, type, investment)
    FundingRound.new(startup, self, type, investment)
  end

  def funding_rounds
    FundingRound.all.select do |fundinground|
      fundinground.venture_capitalist == self
    end
  end

  def biggest_investment
    count = 0
    biggest_funding_round = ""
    my_funding_rounds = FundingRound.all.select do |fundinground|
      fundinground.venture_capitalist == self
    end
    my_funding_rounds.each do |fundinground|
      if fundinground.investment > count
        count = fundinground.investment
        biggest_funding_round = fundinground.startup
      end
    end
    biggest_funding_round
  end

  def invested(domain)
    count = 0
    my_funding_rounds = FundingRound.all.select do |fundinground|
      fundinground.venture_capitalist == self
    end
    my_start_ups = my_funding_rounds.each do |fundinground|
      if fundinground.startup.domain = domain
      count += fundinground.investment ## not finished
      end
    end
    count
  end

end
