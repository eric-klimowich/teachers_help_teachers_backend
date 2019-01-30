class User < ApplicationRecord
  has_many :lessons
  has_many :comments
end
