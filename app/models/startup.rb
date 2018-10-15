class Startup

  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []

  def initialize(name, founder)
    @founder = founder
    @name = name
    @domain = domain
    @@all << self
  end

    def name
      @name
    end

    def domain
      @domain
    end

    def pivot=(domain, name)
      @domain = domain
      @name = name
    end

    def self.all
      @@all
    end

    def self.find_by_founder(founder)
      self.all.find { |startup| startup.name == founder}
    end

    def self.domains
      self.all.domains
    end

    def sign_contract(venture_capitalist, type, investment)
      new_round = FundingRound.new()

    end

    def num_funding_rounds
      FundingRound.all

    end

    

    def total_funds

    end

end
