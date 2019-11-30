class Werewolf
  attr_reader :name, :location

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def change!
    if @human == true
      @human = false
      @wolf = true
      @hungry = true
    else @human == false
      @human = true
      @wolf = false
    end
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    if @human == true
      return "I have no desire for human flesh at this time"
    else @wolf == true
      @hungry = false
      victim.status = :dead
    end
  end
end
