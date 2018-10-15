class VentureCapitalist

  attr_accessor :name, :funds

  @@all = []
  @@tres_commas = []

  def initialize(name)
    @name = name
    @funds = 1000000001.0
    @@all << self
    @investments = []
    @my_startups = []
  end

  def self.all
    @@all
  end

  def self.tres_commas
    @@tres_commas
  end

  #do billionaires have a problem adding themselves to the club?
  #maybe it should be part of the init method.
  def tres_commas
    if self.funds > 1000000000.0
      @@tres_commas << self
    end
  end

  def offer_contract(type, amount, startup)
    new_fund = FundingRound.new(type, amount.to_f, startup, self)
    @investments << new_fund
    @my_startups << startup
    new_fund
  end

#look through the instances array of FundingRound objects, return the highest amount
  def biggest_investment
    @investments.max_by {|fundings| fundings.amount}
  end

  #finds all FundingRound objects given a domain, totals the amounts in those FR objects
  def invested(domain_name)
    total = 0
    startup_domain = FundingRound.all.select {|funds| funds.startup.domain == domain_name}
    startup_domain.each do |rounds|
      total += rounds.amount
    end
    total
  end

end
