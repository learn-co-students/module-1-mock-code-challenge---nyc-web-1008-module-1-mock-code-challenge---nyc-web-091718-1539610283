
class Startup

  #INITIALIZATION

  attr_accessor :name,:domain
  attr_reader :founder

  @@all = []

  # Initiliaze Startup instance with #name,#founder and #domain

  def initialize(name,founder,domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

#INSTANCE METHODS

  # Instance Method #pivot - takes a domain and name as parameters, change the domain and name of the startup

  def pivot(domain,name)
   self.domain=domain
   self.name =name
  end

  def sign_contract (venture_capitalist,type,investment)
    FundingRound.new(self,venture_capitalist,type,investment)
  end

  def num_funding_rounds
    FundingRound.all.map do |round|
      round.startup == self
    end
  end

  def total_funds

  end

  def investors

  end

  def big_investors

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
