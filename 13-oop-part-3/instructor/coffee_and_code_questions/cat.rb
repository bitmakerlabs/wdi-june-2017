class Cat

  def initialize(name)
    @name = name
    @fed = @rested = @entertained = @adopted = false
  end

  def happy?
    @fed && @rested && @entertained && @adopted
  end

  def play
    @entertained = true
    @rested = false
  end

  def pet
    if happy?
      'Purrrrr'
    else
      'Hisssss'
    end
  end

  def adopt
    @adopted = true
  end

  def eat
    @fed = true
  end

  def sleep
    @rested = true
  end

end
