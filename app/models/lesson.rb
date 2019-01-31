class Lesson < ApplicationRecord
  belongs_to :grade_subject

  has_many :comments
end
