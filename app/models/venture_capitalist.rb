class VentureCapitalist

  #INITIALIZATION

  attr_accessor :name,:tres_commas

  @@all =[]

  def initialize(name,tres_commas)
    @name = name
    @tres_commas = tres_commas
    @@all << self
  end

  #INSTANCE METHODS

  def offer_contract (startup,type,investment)
    FundingRound.new(startup,self,type,investment)
  end

  def funding_rounds
    FundingRound.all.select do |round|
      round.venture_capitalist == self
    end
  end

  def portfolio
    unique_startups = self.funding_rounds.uniq do |round|
      round.startup
    end
      unique_startups.map do |round|
        round.startup
      end
  end

  def biggest_investment
    self.funding_rounds.max_by do |round|
      round.investment
    end
  end

  def invested (domain)
    total = 0

    rounds = self.funding_rounds.select do |round|
      round.startup.domain == domain
    end

    rounds.each do |round|
      total += round.investment
    end
    total
  end


  #CLASS METHODS

  def self.all
    @@all
  end

  def self.tres_commas_club
    self.all.select do |vc|
      vc.tres_commas
    end
  end

end # End of VentureCapitalist Class
