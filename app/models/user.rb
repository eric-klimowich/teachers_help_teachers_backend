class User < ApplicationRecord
  has_secure_password

  has_many :grade_levels
  has_many :comments
  has_many :favorite_lessons
end
