class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :file, :file_name, :times_used, :grade, :user

  has_many :comments

  def user
    user_id_hash = {}

    user_id_hash["user_id"] = object.grade_subject.grade_level.user.id

    user_id_hash
  end

  def grade
    grade_and_subject_hash = {}

    grade_and_subject_hash["subject"] = object.grade_subject.subject
    grade_and_subject_hash["level"] = object.grade_subject.grade_level.grade

    grade_and_subject_hash
  end
end
