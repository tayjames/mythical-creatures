class Pirate
  attr_reader :name, :job, :cursed, :booty

  def initialize(name, job="Scallywag")
    @name = name
    @job = job
    @cursed = false
    @count = 0
    @booty = 0
  end

  def cursed?
    if @count >= 3
      @cursed = true
    end
    @cursed
  end

  def commit_heinous_act
    @count += 1
  end

  def rob
    @booty += 100
  end
end
