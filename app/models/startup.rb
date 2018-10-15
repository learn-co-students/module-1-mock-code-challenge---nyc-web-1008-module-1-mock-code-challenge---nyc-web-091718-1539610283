class Startup

  @@all = []

  # - `Startup#name`
  #   - returns a **string** that is the startup's name

  attr_accessor :name, :domain
  attr_reader :founder

  # - `Startup#founder`

  #   - returns a **string** that is the founder's name
  #   - Once a startup is created, the founder cannot be changed.

  # - `Startup#domain`
  #   - returns a **string** that is the startup's domain
  #   - Once a startup is created, the domain cannot be changed.

  def initialize(founder, domain)
    @founder = founder
    @domain = domain
    @@all << self
  end

  # - `Startup.all`
  #   - should return **all** of the startup instances

  def self.all
    @@all
  end

  # - `Startup#pivot`
  #   - given a string of a **domain** and a string of a **name**, change the domain and name of the startup

  def pivot(domain, name)
    @domain = domain #required me to change domain to attr_accessor even though earlier spec said to make it read only
    @name = name
  end

  # - `Startup.find_by_founder`
  #   - given a string of a **founder's name**, returns the **first startup** whose founder's name matches

  def self.find_by_founder(founder)
    self.all.find { |startup| startup.founder == founder}
  end

  # - `Startup.domains`
  #   - should return an **array** of all of the different startup domains

  def self.domains
    self.all.collect { |startup| startup.domain }
  end

end #class Startup
