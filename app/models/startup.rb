class Startup

attr_accessor :name
attr_reader :founder, :domain

@@all = []

def initialize(name, founder, domain)
  @name = name
  @founder = founder
  @domain = domain
  @@all << self
end

def self.all
  @@all
end

#call on the instance vraible to be able to change
def pivot(domain, name)
  @domain = domain
  @name = name
end
#dont get this
def self.find_by_founder(name)
  if Startup.all.name == self.founder
    founder.all.first
  end
end

def self.domains
  Startup.all.domain
end

end#end of Startup class
