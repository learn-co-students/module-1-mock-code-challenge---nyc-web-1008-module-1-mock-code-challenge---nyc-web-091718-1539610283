class Startup
  attr_accessor: :startup_name, :founder, :domain

  FOUNDER = []
  DOMAIN = domain

  @@all = []


  def initialize(startup_name, domain )
    @startup_name = startup_name
    @domain = domain
    @@all << self

  end

  def startup_name
    "#{@startup_name}"
  end

  def founder
    puts "#{FOUNDER}"
  end

  def domain
    "#{DOMAIN }"
  end

  def pivot(domain, name)
    puts "#{DOMAIN}, ${@name}"
  end

  def self.all
    @@all
  end

  def self.find_by_founder
  find_my_founder = Hash.new
    @@all.find.split(" ") do |found|
      find_my_founder == FOUNDER
    end
  find_my_founder
  end

  #given a string of a **founder's name**, returns the **first startup** whose founder's name matches
  def self.domains
    #return an **array** of all of the different startup domains
  end 
end





- `Startup#name`
  #- returns a **string** that is the startup's name
    #setter

- `Startup#founder`
  #- returns a **string** that is the founder's name
  #setter

#  - Once a startup is created, the founder cannot be changed.
  #constant? #

- `Startup#domain`
#!  - returns a **string** that is the startup's domain
#!  - Once a startup is created, the domain cannot be changed.

- `Startup#pivot`
#!!  - given a string of a **domain** and a string of a **name**, change the domain and name of the startup

- `Startup.all`
  #- should return **all** of the startup instances

- `Startup.find_by_founder`
#!!!  - given a string of a **founder's name**, returns the **first startup** whose founder's name matches

- `Startup.domains`
  - should return an **array** of all of the different startup domains
