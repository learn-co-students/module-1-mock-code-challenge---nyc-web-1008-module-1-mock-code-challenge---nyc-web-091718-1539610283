require 'pry'
class Startup
  attr_accessor :name, :domain
  attr_reader :founder 
  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder  
    @domain = domain
    @@all << self 
  end 

  def pivot(name, domain) 
    self.name = name 
    self.domain = domain
  end 

  def self.all
    puts @@all
  end
  
  #its not working i have no idea why 
  # def self.find_by_founder(founder_name)
  #   self.all.select do |startup|
  #     startup.founder = founder_name 
  #   end 
  # end 

  # def self.domains 
  #   self.all.map do |startup|
  #    startup.domain
  #   end 
  # end 
  
  def sign_contract(venture_capitalist, investment_type, amount)
    funding = FundingRound.new(self, venture_capitalist, investment_type, amount)
  end 

  def num_funding_rounds
    FundingRound.all.select do |round|
      round.startup = self
    end 
  end 


end

# Startup.find_by_founder('vera')

# Startup.domains
 