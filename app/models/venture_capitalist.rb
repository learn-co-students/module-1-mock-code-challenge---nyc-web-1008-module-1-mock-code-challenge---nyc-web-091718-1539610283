class VentureCapitalist

@@venture_all = []

# - `VentureCapitalist#name`
#   - returns a **string** that is the venture capitalist's name

attr_accessor :name, :tres_commas

def initialize
  @tres_commas = [true, false].sample
  @@venture_all << self
end

# - `VentureCapitalist.all`
#   - returns an array of all venture capitalists

def self.all
  @@venture_all
end

# - `VentureCapitalist#tres_commas`
#   - returns a **boolean** stating whether or not the venture capitalist is in the Trés Commas club

#in ATTR_ACCESSOR

# - `VentureCapitalist.tres_commas_club`
#   - returns an array of all venture capitalists in the Trés Commas club

def self.tres_commas_club
  list = []
  self.all.collect do |startup|
    if startup.tres_commas == true
      startup
    end
  end
end

end #class VentureCapitalist
