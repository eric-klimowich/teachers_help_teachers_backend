class GradeSubjectSerializer < ActiveModel::Serializer
  attributes :id, :subject, :grade_level_id

  # , :lessons, :comments



  # def lessons
  #   object.lessons.map do |lesson|
  #     ActiveModelSerializers::SerializableResource.new(lesson, serializer: LessonSerializer)
  #   end
  # end
  #
  # def comments
  #   new_hash = {}
  #
  #   object.lessons.each do |lesson|
  #     new_hash[lesson.title] = 'whatever'
  #   end
  #
  #   new_hash
  # end
end
