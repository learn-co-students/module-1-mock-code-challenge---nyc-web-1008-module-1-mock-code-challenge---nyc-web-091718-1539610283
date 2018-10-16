
class Startup

  #INITIALIZATION

  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []

  # Initiliaze Startup instance with #name,#founder and #domain

  def initialize(name,founder,domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

#INSTANCE METHODS

  # Instance Method #pivot - takes a domain and name as parameters, change the domain and name of the startup. Double custom setter method.


  def pivot(domain,name)
   @domain=domain
   @name =name
  end

  def sign_contract (venture_capitalist,type,investment)
    FundingRound.new(self,venture_capitalist,type,investment)
  end

  #helper method to find all funding rounds for the startup (the self , current instance of Startup Class)
  # we will call on this helper method to do other methods

  def funding_rounds
    FundingRound.all.select do |round|
      round.startup == self
    end
  end

  # calls the count method on the return of funding_rounds (which is an array of all funding rounds belonging to the current instance of Startup, THE SELF!)
  def num_funding_rounds
    self.funding_rounds.count
  end

  def total_funds
    funds = 0
    self.funding_rounds.each do |round|
      funds += round.investment
    end
    funds
  end

  # def total_funds
  #   funds_array = self.funding_rounds.map do |round|
  #     round.investment
  #   end
  #   funds_array.reduce(:+)
  # end

  def investors
    unique_vc = self.funding_rounds.uniq do |round|
      round.venture_capitalist
    end
    unique_vc.map do |round|
      round.venture_capitalist
    end
  end

  def big_investors
    self.investors.select do |investor|
      investor.tres_commas
    end
  end

#CLASS METHODS
  def self.all
    @@all
  end


  def self.find_by_founder(founder)
    self.all.find do |startup|
      startup.founder == founder
    end
  end

  def self.domains
    self.all.map do |startup|
      startup.domain
    end
  end

end # End of Startup Class
