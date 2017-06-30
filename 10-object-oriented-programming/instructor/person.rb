class Person

  # Special method
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name  = last_name
    @age        = age

    # Default values
    @awake = true
    @alive = true
    @health = 100

    @tail = false
  end

  # READER / attr_reader
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  # WRITER / attr_writer
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  # Instance Methods
  def full_name
    "#{ @first_name } #{ @last_name }"
  end

  def greetings
    if @awake
      "Hi, my name is #{ full_name }"
    else
      "Zzzzzz"
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

  def die
    @alive = false
  end

  def mutate
    @tail = true
  end

end
