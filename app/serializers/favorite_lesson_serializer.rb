class FavoriteLessonSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :lesson_id

  # def lessons
  #   lesson_hash = {}
  #
  #   lesson_hash["lesson"] = object.lesson
  #   lesson_hash["grade"] = object.lesson.grade_subject
  #   lesson_hash["level"] = object.lesson.grade_subject.grade_level
  #   lesson_hash["author"] = object.lesson.grade_subject.grade_level.user
  #
  #   lesson_hash
  # end

  # def userinfo
  #   user_first_name_and_last_name = {}
  #
  #   user_first_name_and_last_name["first_name"] = object.user.first_name
  #   user_first_name_and_last_name["last_name"] = object.user.last_name
  #
  #   user_first_name_and_last_name
  # end
end
