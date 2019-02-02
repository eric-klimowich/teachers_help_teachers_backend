class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :file, :times_used, :grade

  has_many :comments

  def grade
    grade_and_subject_hash = {}

    grade_and_subject_hash["subject"] = object.grade_subject.subject
    grade_and_subject_hash["level"] = object.grade_subject.grade_level.grade

    grade_and_subject_hash
  end
end
