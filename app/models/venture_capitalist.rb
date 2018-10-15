class VentureCapitalist
  attr_reader :name
  attr_accessor :tres_commas

  @@all = []

  def initialize(name, tres_commas = false)
    @name = name
    @tres_commas = tres_commas # how the heck do we know this? I'm just making it default option to false and we can change it if true
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club # SELECT the VCs in tres commas club
    @@all.select do |vc_object|
        vc_object.tres_commas == true
    end
  end

end # end of VC class


#### VentureCapitalist

# - `VentureCapitalist#offer_contract`
#   - given a **startup object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# - `VentureCapitalist#funding_rounds`
#   - returns an array of all funding rounds for that venture capitalist
# - `VentureCapitalist#portfolio`
#   - Returns a **unique** list of all startups this venture capitalist has funded
# - `VentureCapitalist#biggest_investment`
#   - returns the largest funding round given by this venture capitalist
# - `VentureCapitalist#invested`
#   - given a **domain string**, returns the total amount invested in that domain
