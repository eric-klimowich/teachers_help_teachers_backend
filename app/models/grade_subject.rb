class GradeSubject < ApplicationRecord
  belongs_to :grade_level

  has_many :lessons
end
