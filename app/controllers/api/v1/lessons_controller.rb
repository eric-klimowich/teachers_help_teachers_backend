require 'base64'

class Api::V1::LessonsController < ApplicationController
  before_action :find_lesson, only: [:update]

  def index
    @lessons = Lesson.all
    render json: @lessons
  end

  def show
    @lesson = Lesson.find(params[:id])
    send_data Base64.decode64(@lesson.file.sub("data:application/pdf;base64,", "")), filename: @lesson.file_name
  end

  def create
    @lesson = Lesson.create(lesson_params)
    if @lesson.valid?
      render json: @lesson, status: :accepted
    else
      render json: { errors: @lesson.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    if @lesson.update(lesson_params)
      render json: @lesson, status: :accepted
    else
      render json: { errors: @lesson.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @lesson.destroy
  end

  private

  def lesson_params
    params.permit(:title, :description, :file, :file_name, :times_used, :grade_subject_id)
  end

  def find_lesson
    @lesson = Lesson.find(params[:id])
  end
end
