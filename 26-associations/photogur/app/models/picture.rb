class Picture < ActiveRecord::Base
  # there is a picture_id column in the comments table
  has_many :comments

  # we now have these methods:
  # @picture.comments
  # @picture.comments.count
  # @picture.comments.create
  # @picture.comments <<
  # etc
  # and more!
end
