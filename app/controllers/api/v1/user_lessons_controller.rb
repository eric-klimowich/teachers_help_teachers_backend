class Api::V1::UserLessonsController < ApplicationController
  before_action :find_user_lesson, only: [:update]

  def index
    @user_lessons = UserLesson.all
    render json: @user_lessons
  end

  def create
    @user_lesson = UserLesson.create(user_lesson_params)
    if @user_lesson.valid?
      render json: @user_lesson, status: :accepted
    else
      render json: { errors: @user_lesson.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    if @user_lesson.update(user_lesson_params)
      render json: @user_lesson, status: :accepted
    else
      render json: { errors: @user_lesson.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @user_lesson.destroy
  end

  private

  def user_lesson_params
    params.permit(:user_id, :lesson_id)
  end

  def find_user_lesson
    @user_lesson = UserLesson.find(params[:id])
  end
end
