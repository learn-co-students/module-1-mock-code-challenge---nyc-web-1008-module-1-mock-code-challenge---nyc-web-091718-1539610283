class Startup

  attr_accessor :startup_name
  attr_reader :domain, :founders_name

  @@all = []
  @@domains = []

  def initialize(startup_name, founders_name, domain)
    @domain = domain
    @founders_name = founders_name
    @startup_name = startup_name
    @@all << self
    @@domains << domain
  end

  def self.all
    @@all
  end

  def pivot(new_domain, new_startup_name)
    @domain = new_domain
    @startup_name = new_startup_name
  end

  def self.find_by_founder(founders_name)
    @@all.find do |startup|
      startup
    end
  end

  def self.domains
    @@domains
  end

  def sign_contract(venture_capitalist, type, invested)
    FundingRound.new(self, venture_capitalist, type, investment)
  end

  def num_funding_rounds
    my_funding_rounds = FundingRound.all.select do |fundinground|
      fundinground.startup == self
    end
    my_funding_rounds.length
  end

  def total_funds
    count = 0
    my_funding_rounds = FundingRound.all.select do |fundinground|
      fundinground.startup == self
    end
    my_funding_rounds.each do |fundinground|
      count += fundinground.investment
    end
    count
  end

  def investors
    my_funding_rounds = FundingRound.all.select do |fundinground|
      fundinground.startup == self
    end
     my_venture_capitalists = my_funding_rounds.map do |fundinground|
       fundinground.venture_capitalist
     end
     my_venture_capitalists.uniq
  end

  def big_investors
    my_funding_rounds = FundingRound.all.select do |fundinground|
      fundinground.startup == self
    end
     my_venture_capitalists = my_funding_rounds.map do |fundinground|
       fundinground.venture_capitalist
     end
     my_venture_capitalists.select do |fundinground|
       fundinground.net_worth > 1000000000
     end
  end
end
