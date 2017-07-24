class Track < ApplicationRecord

  SHORT = 180000
  LONG  = 360000

  def self.short
    shorter_than(SHORT)
  end

  def self.long
    longer_than(LONG)
  end

  def self.medium
    longer_than(SHORT).shorter_than(LONG)
  end

  def self.shorter_than(milliseconds)
    where('milliseconds < ?', milliseconds)
  end

  def self.longer_than(milliseconds)
    where('milliseconds >= ?', milliseconds)
  end

end
