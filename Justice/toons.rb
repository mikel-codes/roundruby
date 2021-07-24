class Toons
  attr :jokes, :games
  def initialize()
    @jokes = "jokes"; @games = "games"
  end
  
  def porsche
    puts("#{jokes}  are + games + we play")

  end

end

s = Toons.new
s.porsche
