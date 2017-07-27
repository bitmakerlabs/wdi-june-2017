class User < ApplicationRecord
  has_secure_password

  # Exercise: Add uniqueness validation
  validates :email, presence: true
end
