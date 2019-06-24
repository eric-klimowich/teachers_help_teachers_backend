class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    if @user.valid?

      payload = {
        sub: @user.id,
        iat: Time.now.to_i,
        exp: Time.now.to_i + 7200000
      }

      token = JWT.encode payload, secret_key(), "HS256"

      render json: {
        username: @user.username,
        id: @user.id,
        token: token
        }
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @user.destroy
  end

  private

  def user_params
    params.permit(:username, :password, :first_name, :last_name, :grade_teaching, :subject_teaching)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
