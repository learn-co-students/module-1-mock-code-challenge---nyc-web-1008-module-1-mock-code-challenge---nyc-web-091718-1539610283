class VentureCapitalist
  attr_accessor :name, :tres_commas

  @@all = []

  def initialize(name)
    @name = name
    @tres_commas = false
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@all.select { |vc| vc.tres_commas == true}
  end
end #end of venture capitalist class
