class Track < ApplicationRecord

  SHORT = 180000
  LONG  = 360000

  scope :short,  -> { shorter_than(SHORT) }
  scope :long,   -> { longer_than(LONG) }
  scope :medium, -> { longer_than(SHORT).shorter_than(LONG) }

  scope :starts_with, -> (char) { where('name ILIKE ?', "#{ char }%") }

  scope :most_recent_scope, -> (limit) { order(created_at: :desc).limit(limit) if limit.present? }

  # def self.starts_with(char)
  #   where('name ILIKE ?', "#{ char }%")
  # end

  def self.shorter_than(milliseconds)
    where('milliseconds < ?', milliseconds)
  end

  def self.longer_than(milliseconds)
    where('milliseconds >= ?', milliseconds)
  end

  def self.most_recent_method(limit)
    if limit.present?
      order(created_at: :desc).limit(limit)
    else
      none
    end
  end

end
