class Wizard
  attr_reader :name, :beard

  def initialize(name, beard = {bearded: true})
    @name = name
    @beard = beard[:bearded]
    @rested = true
    @counter = 0
  end

  def bearded?
    @beard
  end

  def incantation(spell)
    "sudo" + " " + "#{spell}"
  end

  def rested?
    if @counter <= 2
      @rested = true
    else
      @rested = false
    end
    @rested
  end

  def cast
    @counter += 1
    return "MAGIC MISSILE!"
  end
end
