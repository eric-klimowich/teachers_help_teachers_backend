class Lesson < ApplicationRecord
  belongs_to :grade_subject

  has_many :comments
  has_many :favorite_lessons
end
