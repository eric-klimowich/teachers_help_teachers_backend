class User < ApplicationRecord
  has_many :grade_levels
  has_many :comments
  has_many :favorite_lessons
end
