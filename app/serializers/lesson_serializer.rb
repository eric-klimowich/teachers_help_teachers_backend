class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :file, :times_used, :grade_subject_id

  has_many :comments
  has_one :grade_subject_id
end
