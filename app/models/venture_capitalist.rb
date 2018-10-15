class VentureCapitalist

  attr_accessor :name, :tres_commas
  attr_reader :funding_rounds

  @@all = []

  def initialize(name)
    @@all << self
    @tres_commas = false
    @name = name
    @funding_rounds = []
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@all.select {|vc| vc.tres_commas == true }
  end

  def portfolio
    @funding_rounds.map{|fr| fr.startup}.uniq
  end

  def biggest_investment
    big_inv = 0
    @funding_rounds.each do |fr|
      big_inv = fr.investment if fr.investment > big_inv
    end
    big_inv
  end

  def offer_contract(startup, type, investment)
    return "You must have a positive investment" if investment < 0
    new_fr = FundingRound.new(startup, type, investment)
    new_fr.venture_capitalist = self
    @funding_rounds << new_fr
    new_fr
  end

  def invested
    # given a **domain string**, returns the total amount invested in that domain
  end

end
