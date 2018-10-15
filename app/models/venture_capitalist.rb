class VentureCapitalist

attr_accessor :name

@@all = []
def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def tres_commas
  if self.name == "Trés Commas club"
    true
  else
    false
  end
end

def self.tres_commas_club
 VentureCapitalist.all.select do |name|
   name.name = "Trés Commas club"
end
end

end #end of VentureCapitalist class
