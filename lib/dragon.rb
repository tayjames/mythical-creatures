class Dragon
  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @count = 0
  end

  def hungry?
    if @count < 3
      @hungry == true
    else
      @hungry = false
    end
  end

  def eat
    @count += 1
  end
end
