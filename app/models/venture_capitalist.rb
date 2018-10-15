class VentureCapitalist
  attr_accessor :name

  @@all = []
  @@tres_commas_club = [] #need to find way to add VC members

  def initialize(name)
    @name = name
    @@all << self
    @@tres_commas_club #?
  end

  def name
    @name
  end

  def tres_commas
    #if tres commas club .include?(VC name) ? true : false
    #@@tres_commas_club << those VC's -??
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@tres_commas_club
  end

  def offer_contract(startup, type, investment)
    new_round = Startup.new()
  end

end
