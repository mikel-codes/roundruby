example_sgtn = Object.new
def example_sgtn.available?
  return true
end

def example_sgtn.render 
  return nil; end

class J
  def initialize
    @gg = "lets take ogg music as default player"
    @jp = "New justice league"
  end

  def J.timeLy
    puts "hey i'm singleton"
  end

  def introTech
    puts("several methods are known to select a default player")
    puts("maybe we can #{@gg}")
  end
end

jr = J.new()
J.timeLy
J.introTech
