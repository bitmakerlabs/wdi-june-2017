class Comment < ApplicationRecord
  # there is a picture_id column in this database table
  belongs_to :picture
  has_many :tags, through: :picture
  # we now have these methods:
  # @comment.picture
  # @comment.picture=(@picture)
  # @comment.build_picture(attributes = {})
  # @comment.create_picture(attributes = {})
end
