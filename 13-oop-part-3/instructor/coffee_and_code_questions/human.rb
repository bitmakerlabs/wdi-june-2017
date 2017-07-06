class Human

  def initialize(name)
    @name = name
    @cats = []
  end

  def adopt(cat)
    @cats << cat
    cat.adopt
  end

  def feed
    @cats.each { |cat| cat.eat }
  end

  def entertain
    @cats.each { |cat| cat.play }
  end

  def pet
    @cats.each do |cat|
      puts cat.pet
    end
  end

end
