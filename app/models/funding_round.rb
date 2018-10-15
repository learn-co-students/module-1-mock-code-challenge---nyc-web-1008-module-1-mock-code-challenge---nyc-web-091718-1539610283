require 'pry'

# Welcome to Silicon Valley! For this assignment, our domain is the startup world! We have three models - `Startup`, `VentureCapitalist`, and `FundingRound`. A `Startup` has many `VentureCapitalist`s through `FundingRound`s.
# If you are not sketching out your domain, and thinking about single source of truth,
# you are doing it wrong :(

# - `FundingRound#startup`
#   - returns the startup object for that given funding round
#   - Once a funding round is created, I should not be able to change the startup
# - `FundingRound#venture_capitalist`
#   - returns the venture capitalist object for that given funding round
#   - Once a funding round is created, I should not be able to change the venture capitalist
# - `FundingRound#type`
#   - returns a **string** that is the type of funding round
#   - Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C, etc.
# - `FundingRound#investment`
#   - returns a **number** that is the amount invested during this funding round
#   - This should be a float that is not a negative number.
# - `FundingRound.all`
#   - returns all of the funding rounds

class FundingRound

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
end
