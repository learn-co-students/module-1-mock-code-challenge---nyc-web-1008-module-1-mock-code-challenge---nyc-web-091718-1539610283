class FundingRound

#INITIALIZATION
  attr_reader :startup,:venture_capitalist
  attr_accessor :type,:investment

  @@all=[]

  def initialize(startup,venture_capitalist,type,investment)
    if investment >= 0
      @startup = startup
      @venture_capitalist = venture_capitalist
      @type = type
      @investment = investment
    else
      nil
    end
      @@all << self
    end


  def investment=(investment)
    @investment = investment if investment >= 0
  end

  #CLASS METHODS

  def self.all
    @@alls
  end

end # End of FundingRound Class
