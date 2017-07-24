class Track < ApplicationRecord

  SHORT = 180000
  LONG  = 360000

  scope :short,  -> { shorter_than(SHORT) }
  scope :long,   -> { longer_than(LONG) }
  scope :medium, -> { longer_than(SHORT).shorter_than(LONG) }

  scope :starts_with, -> (char) { where('name ILIKE ?', "#{ char }%") }

  scope :most_recent_scope, -> (limit) { order(created_at: :desc).limit(limit) if limit.present? }

  validates :name, :composer, :milliseconds, :bytes, :unit_price, presence: true
  validates :bytes, :milliseconds, numericality: { greater_than: 0 }
  validates :unit_price, numericality: { greater_than: 0.0 }

  validate :name_must_be_titleized

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

private

  def name_must_be_titleized
    # Step 1: Check that first char is upper cased
    first_char = name[0]

    # first_char --> 'A'
    # first_char.upcase --> 'A'
    # 'A' != 'A' ---> false
    # first_char --> 'a'
    # first_char.upcase --> 'A'
    # 'a' != 'A' ---> true
    first_char_is_not_upcased = (first_char != first_char.upcase)

    # Step 2: If the first char is not upper cased, add an error
    errors.add(:name, 'must be capitalized!') if first_char_is_not_upcased

  end

end
