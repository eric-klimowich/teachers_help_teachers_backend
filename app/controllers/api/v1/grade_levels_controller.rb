class Api::V1::GradeLevelsController < ApplicationController
  before_action :find_grade_level, only: [:update]

  def index
    @grade_levels = GradeLevel.all
    render json: @grade_levels
  end

  def create
    @grade_level = GradeLevel.create(grade_level_params)
    if @grade_level.valid?
      render json: @grade_level, status: :accepted
    else
      render json: { errors: @grade_level.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    if @grade_level.update(grade_level_params)
      render json: @grade_level, status: :accepted
    else
      render json: { errors: @grade_level.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @grade_level.destroy
  end

  private

  def grade_level_params
    params.permit(:grade, :user_id)
  end

  def find_grade_level
    @grade_level = GradeLevel.find(params[:id])
  end
end
