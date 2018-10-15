class VentureCapitalist #investor

  attr_accessor :name, :tres_commas

  @@all = []

  def initialize(name, tres_commas=true)
    @name = name
    @@all << self
  end

  def tres_commas
    tres_commas_club.include?(self.name)
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@all.select do |instance|
      self.tres_commas
    end
  end


end
