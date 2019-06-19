class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :grade_teaching, :subject_teaching
end
