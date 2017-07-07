require_relative 'powers'

class Superhero

  MAX_HEALTH             = 100
  DEFAULT_POWER          = 10
  DEFAULT_HEALING_FACTOR = 10
  DEFAULT_SPEED          = 0
  DEFAULT_ALTITUDE       = 0

  attr_reader :health, :power, :healing_factor, :speed, :altitude

  def initialize
    @health         = MAX_HEALTH
    @power          = DEFAULT_POWER
    @healing_factor = DEFAULT_HEALING_FACTOR
    @speed          = DEFAULT_SPEED
    @altitude       = DEFAULT_ALTITUDE
  end

  def conscious?
    @health > 0
  end

  def hit(opponent)
    if conscious? && self.speed >= opponent.speed && self.altitude >= opponent.altitude
      opponent.take_hit(@power)
    end
  end

  def take_hit(damage)
    @health -= damage
    @health = 0 if @health < 0
  end

  def rest
    @health += @healing_factor
    @health = MAX_HEALTH if @health > MAX_HEALTH
  end

end

class Amazon < Superhero
  include MartialArts
  include Strength
end

class Kryptonian < Superhero
  include Strength
  include Speed
  include Flight
end

class Speedster < Superhero
  include Regeneration
  include Speed
end

class IronPerson < Superhero
  include Genius
  include Rich
  include Flight
end

class XWeapon < Superhero
  include Regeneration
  include Claws
end

class BatPerson < Superhero
  include MartialArts
  include Genius
  include Rich
end
