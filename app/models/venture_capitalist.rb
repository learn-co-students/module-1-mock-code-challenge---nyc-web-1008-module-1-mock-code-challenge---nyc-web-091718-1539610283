class VentureCapitalist
  #   VentureCapitalist#name
  # returns a string that is the venture capitalist's name
  # VentureCapitalist#tres_commas
  # returns a boolean stating whether or not the venture capitalist is in the Trés Commas club
  attr_accessor :name, :tres_commas
  @@all = []

  def initialize(name, tres_commas=false)
    @name = name
    @tres_commas = tres_commas
    @@all << self
  end

  # VentureCapitalist.all
  # returns an array of all venture capitalists
  def self.all
    @@all
  end

  # VentureCapitalist.tres_commas_club
  # returns an array of all venture capitalists in the Trés Commas club
  def self.tres_commas_club
    @@all.select {|vc| vc.tres_commas}
  end


end
