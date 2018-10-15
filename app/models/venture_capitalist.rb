class VentureCapitalist


attr_reader :name, :investment
attr_accessor :name

@@all = []
@@tres_commas_club = []
@@funding_rounds = []

def initialize(name, investment)
  @name = name
  @investment = investment
  @@all << self.name
  if investment > 1000000000
    @@tres_commas_club << name
  end
end



def tres_commas(name)
  #returns a **boolean** stating whether or not the venture capitalist is in the Trés Commas club
  @@tres_commas_club.include?(name)
end

def self.all
  @@all
end

def self.tres_commas_club
  @@tres_commas_club
end

def offer_contract(startup, type, investment)
  funding_round = FundingRound.new(name, type, investment)
  #associates it with that startup and venture capitalist
  funding_round.name = startup
  @@funding_rounds = << funding_round
end

def funding_rounds
  @@funding_rounds
end

def portfolio
  @@funding_rounds.uniq!
end

def biggest_investment
end

def invested(domain)

end
end #end class
# - `VentureCapitalist#offer_contract`
#   - given a **startup object**, type of investment (as a string), and the amount invested (as a float), creates a new
#   funding round and associates it with that startup and venture capitalist.
# - `VentureCapitalist#funding_rounds`
#   - returns an array of all funding rounds for that venture capitalist
# - `VentureCapitalist#portfolio`
#   - Returns a **unique** list of all startups this venture capitalist has funded
# - `VentureCapitalist#biggest_investment`
#   - returns the largest funding round given by this venture capitalist
# - `VentureCapitalist#invested`
#   - given a **domain string**, returns the total amount invested in that domain
#
# #### Build out the following methods on the `VentureCapitalist` class
#
# - `VentureCapitalist#name`
#   - returns a **string** that is the venture capitalist's name
# - `VentureCapitalist#tres_commas`
#   - returns a **boolean** stating whether or not the venture capitalist is in the Trés Commas club
# - `VentureCapitalist.all`
#   - returns an array of all venture capitalists
# - `VentureCapitalist.tres_commas_club`
#   - returns an array of all venture capitalists in the Trés Commas club
