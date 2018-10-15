
class VentureCapitalist

  attr_reader :venture_capitalist, :club

  def initialize
    @venture_capitalist = self.new
    @club = club
    @name = name
  end


  @@tres_capitalist_club = []
  @@venture_capitalists = []

  def name
    venture_capitalist.name.to_s
    @@venture_capitalists << venture_capitalist.name.to_s
  end

  def tres_commas
    club_tres_commas = "tres Commas"
    if venture_capitalist.club == club
       @@tres_capitalist_club << venture_capitalist.name.to_s
      return true
    else
      false
    end
  end
    # @@tres_capitalist_club << self.name
    #   return true
    # else
    #   return false
    # end

  end

  def self.all
    @@venture_capitalists
  end

  def self.tres_commas_club
    @@tres_capitalist_club
  end

end
