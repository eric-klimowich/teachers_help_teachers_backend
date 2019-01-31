class User < ApplicationRecord
  has_many :grade_levels
  has_many :comments
end
