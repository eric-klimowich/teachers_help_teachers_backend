class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :userinfo, :created_at

  def userinfo
    user_first_name_and_last_name = {}

    user_first_name_and_last_name["first_name"] = object.user.first_name
    user_first_name_and_last_name["last_name"] = object.user.last_name

    user_first_name_and_last_name
  end
end
