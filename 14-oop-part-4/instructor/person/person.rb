class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{ @first_name } #{ @last_name }"
  end

end

class Instructor < Person

  attr_accessor :field_of_expertise, :cohort

  def initialize(first_name, last_name, field_of_expertise)
    super(first_name, last_name)
    @field_of_expertise = field_of_expertise
    @cohort = []
  end

  def teach
    @cohort.each { |student| student.learn }
  end

  def full_name
    "Professor #{ super }"
  end

end

class Student < Person

  attr_reader :knowledge_level

  def initialize(first_name, last_name)
    super(first_name, last_name)
    @knowledge_level = 0
  end

  def learn
    @knowledge_level += 1
  end

  def slack
    @knowledge_level -= 1 if @knowledge_level > 0
  end

end
