class Human
  attr_reader :name
  attr_accessor :encounter_counter, :knocked_out, :notices_ogre

  def initialize
    @name = "Jane"
    @encounter_counter = 0
    @notices_ogre = false
    @knocked_out = false
  end

  def notices_ogre?
    @notices_ogre
  end

  def knocked_out?
    @knocked_out
  end
end
