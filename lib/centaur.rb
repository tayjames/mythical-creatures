class Centaur
  attr_reader :name, :breed, :counter

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @counter = 0
  end

  def shoot
    @counter += 1

    if @counter > 2 || @laying == true
      return "NO!"
    else
      return "Twang!!!"
    end
  end

  def run
    @counter += 1

    if @counter > 2 || @laying == true
      return "NO!"
    else
      return "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @counter > 2
      @cranky = true
    end
  end

  def standing?
    @standing
  end

  def sleep
    if @standing == true
      return "NO!"
    else
      @counter = 0
      @cranky = false
      return "ZZZ"
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def laying?
    @laying
  end

  def drink
    if @standing == false
      return "NO!"
    elsif @cranky == false
      return "BLARRRHGHGHH"
    else @standing == true && @cranky == true
      @cranky = false
      @counter = 0
    end
  end
end
