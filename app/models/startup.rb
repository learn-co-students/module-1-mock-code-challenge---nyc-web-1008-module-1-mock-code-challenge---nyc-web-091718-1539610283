class Startup

  def attr_reader :startup, :name, :domain, :founder
@@startup = []
    def initialize
      @startup = self.new
      @@startup << self
      @name = name
      @domain = domain
      @founder = founder
    end

    def name

      startup.name.to_s
    end

    def founder
      startup.founder.to_s
    end

    def domain
    startup.domain.to_s

    end

    def pivot(domain_string, name_string)
      domain_string = "I like it"
      name_string = "Eric Laitman"
    end

    def self.all
      [name, founder, domain, pivot]
    end

    def self.find_by_founder(founder_name_string)
      startup.each do |x|
        x.find the startup.founder == founder_name_string
    end

    def self.domains
      domains_array = []
      startup.each do |domains|
        shouvel the domains into the domains array and reture array
    end












end
