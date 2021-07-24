module Debug
  def Debug.who_am_i?
    puts "class name is #{self.class.name}, (id: #{self.object_id}) initial value #{self.name}"
  end
end

#mix this module method with class methods
  class Phonograph
    include Debug
    attr :name

    def initialize(name)
      @name = name
    end
  end

  class EightTrack
    include Debug
    attr :name

    def initialize(name)
      @name = name
    end
  end

pt = Phonograph.new("West Life")
et = EightTrack.new("Roll Tape")
pt.who_am_i?; et.who_am_i?
