require 'pry'

# Welcome to Silicon Valley! For this assignment, our domain is the startup world! We have three models - `Startup`, `VentureCapitalist`, and `FundingRound`. A `Startup` has many `VentureCapitalist`s through `FundingRound`s.
# If you are not sketching out your domain, and thinking about single source of truth,
# you are doing it wrong :(

# - `Startup#name`
#   - returns a **string** that is the startup's name
# - `Startup#founder`
#   - returns a **string** that is the founder's name
#   - Once a startup is created, the founder cannot be changed.
# - `Startup#domain`
#   - returns a **string** that is the startup's domain
#   - Once a startup is created, the domain cannot be changed.
# - `Startup#pivot`
#   - given a string of a **domain** and a string of a **name**, change the domain and name of the startup
# - `Startup.all`
#   - should return **all** of the startup instances
# - `Startup.find_by_founder`
#   - given a string of a **founder's name**, returns the **first startup** whose founder's name matches
# - `Startup.domains`
#   - should return an **array** of all of the different startup domains


class Startup

  attr_accessor :startup_name, :startup_founder, :startup_domain

  @@all = []

  def initialize(startup_name, startup_founder, startup_domain)
    @startup_name = startup_name
    @startup_founder = startup_founder
    @startup_domain = startup_domain
    @startup_founder = startup_founder
    @@all << self
  end

  def save
    self.class.all = self
  end

  def self.create
    startup1 = Startup.new
    startup1.save
  end

  def self.all
    @@all
  end

  # Startup#name`
  # - returns a **string** that is the startup's name
  def startup_name
    # startup_name = Startup.new
    # startup_name.self
    # startup_name = self
    puts "#{startup_name}"
  end

  def startup_founder
    puts "#{startup_founder}"
  end

  def startup_domain
    puts "#{startup_domain}"
  end

  def startup_pivot(domain, name)

  end

  def self.all

  end

  def self.find_by_founder

  end

  def self.domains

  end
binding.pry


  # `Startup#sign_contract`
  #   - given a **venture capitalist object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
  # - `Startup#num_funding_rounds`
  #   - Returns the total number of funding rounds that the startup has gotten
  # - `Startup#total_funds`
  #   - Returns the total sum of investments that the startup has gotten
  # - `Startup#investors`
  #   - Returns a **unique** array of all the venture capitalists that have invested in this company
  # - `Startup#`
  #   - Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club
  def sign_contract

  end

  def num_funding_rounds

  end

  def total_funds3

  end

  def investors

  end

  def big_investors

  end

  def method_name
    .unique
  end

  def method_name
    .unique
  end

end
