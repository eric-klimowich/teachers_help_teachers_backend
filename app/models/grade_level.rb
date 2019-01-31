class GradeLevel < ApplicationRecord
  belongs_to :user

  has_many :grade_subjects
end
