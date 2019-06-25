class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params["username"])

    if (@user && @user.authenticate(params["password"]))

      token = JWT.encode payload(), secret_key(), "HS256"

      render json: {
        username: @user.username,
        id: @user.id,
        token: token
        }
    else
      render json: {
        errors: "Those credentials don't match anything we have in our database"
      }, status: :unauthorized
    end
  end

end
