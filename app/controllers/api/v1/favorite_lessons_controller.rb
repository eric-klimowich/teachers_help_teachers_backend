class Api::V1::FavoriteLessonsController < ApplicationController
  before_action :find_favorite_lesson, only: [:update]

  def index
    @favorite_lessons = FavoriteLesson.all
    render json: @favorite_lessons
  end

  def create
    @favorite_lesson = FavoriteLesson.create(favorite_lesson_params)
    if @favorite_lesson.valid?
      render json: @favorite_lesson, status: :accepted
    else
      render json: { errors: @favorite_lesson.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    if @favorite_lesson.update(favorite_lesson_params)
      render json: @favorite_lesson, status: :accepted
    else
      render json: { errors: @favorite_lesson.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @favorite_lesson.destroy
  end

  private

  def favorite_lesson_params
    params.permit(:user_id, :lesson_id)
  end

  def find_favorite_lesson
    @favorite_lesson = FavoriteLesson.find(params[:id])
  end
end
