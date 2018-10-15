class VentureCapitalist

  #INITIALIZATION

  attr_accessor :name,:tres_commas

  @@all =[]

  def initialize(name,tres_commas)
    @name = name
    @tres_commas = tres_commas
    @@all << self
  end

  #INSTANCE METHODS

  def offer_contract

  end

  def funding_rounds

  end

  def portfolio

  end

  def biggest_investment

  end

  def invested

  end


  #CLASS METHODS

  def self.all
    @@all
  end

  def self.tres_commas_club
    self.all.select do |vc|
      vc.tres_commas
    end
  end

end # End of VentureCapitalist Class
