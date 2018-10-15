require 'pry'

# Welcome to Silicon Valley! For this assignment, our domain is the startup world! We have three models - `Startup`, `VentureCapitalist`, and `FundingRound`. A `Startup` has many `VentureCapitalist`s through `FundingRound`s.
# If you are not sketching out your domain, and thinking about single source of truth,
# you are doing it wrong :(

# `VentureCapitalist#name`
#   - returns a **string** that is the venture capitalist's name
# - `VentureCapitalist#tres_commas`
#   - returns a **boolean** stating whether or not the venture capitalist is in the Trés Commas club
# - `VentureCapitalist.all`
#   - returns an array of all venture capitalists
# - `VentureCapitalist.tres_commas_club`
#   - returns an array of all venture capitalists in the Trés Commas club

class VentureCapitalist

  attr_accessor :

  @@all = []
  
  def initialize(argument)
    @argument = argument
  end

  def method_name

  end

  def method_name

  end

binding.pry

# `VentureCapitalist#offer_contract`
#   - given a **startup object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# - `VentureCapitalist#funding_rounds`
#   - returns an array of all funding rounds for that venture capitalist
# - `VentureCapitalist#portfolio`
#   - Returns a **unique** list of all startups this venture capitalist has funded
# - `VentureCapitalist#biggest_investment`
#   - returns the largest funding round given by this venture capitalist
# - `VentureCapitalist#invested`
#   - given a **domain string**, returns the total amount invested in that domain
  def method_name

  end

  def method_name

  end

end
