require 'pry'
class Startup

  attr_reader :founder
  attr_accessor :name, :domain

  @@all = [] # keeps track of all the startup instances

  # INSTANCE METHODS
  # In my world, a start up is "born" with a name, founder, and a domain
  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def pivot(domain, name) # now it's say we CAN change the name and domain so setting those to attr_accessor's, CONFUSED ON THAT PART!!!
    self.domain = domain
    self.name = name
  end

  # INSTANCE METHODS
  def self.all
    @@all # returns the @@all array
  end

  def self.find_by_founder(founder) # returns the FIRST startup** whose founder's name matches - use FIND
    # go thru ALL the start ups using @@all
    # then find which start up has a founder (startup.founder) that == founder passed in
    @@all.find do |startup_object|
      startup_object.founder == founder
    end
  end

  def self.domains
    # want to return and array of the domains so we use MAP
    @@all.map do |startup_object|
      startup_object.domain
    end
  end

end # end of Startup class

# binding.pry

### Associations and Aggregate Methods

#### Startup
#
# - `Startup#sign_contract`
#   - given a **venture capitalist object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# - `Startup#num_funding_rounds`
#   - Returns the total number of funding rounds that the startup has gotten
# - `Startup#total_funds`
#   - Returns the total sum of investments that the startup has gotten
# - `Startup#investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company
# - `Startup#big_investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club
