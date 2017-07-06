class House

  @@default_colour = 'green'

  # Class Attribute Writer
  def self.default_colour=(new_colour)
    @@default_colour = new_colour
  end

  def self.paint_all(new_colour)
    # Paint all houses
  end

  def initialize
    @colour = @@default_colour
  end

  def paint(new_colour)
    @colour = new_colour
  end

end
