class Api::V1::GradeSubjectsController < ApplicationController
  before_action :find_grade_subject, only: [:update]

  def index
    @grade_subjects = GradeSubject.all
    render json: @grade_subjects
  end

  def create
    @grade_subject = GradeSubject.create(grade_subject_params)
    if @grade_subject.valid?
      render json: @grade_subject, status: :accepted
    else
      render json: { errors: @grade_subject.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    if @grade_subject.update(grade_subject_params)
      render json: @grade_subject, status: :accepted
    else
      render json: { errors: @grade_subject.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @grade_subject.destroy
  end

  private

  def grade_subject_params
    params.permit(:grade_subjectname, :password, :first_name, :last_name, :grade_teaching, :subject_teaching)
  end

  def find_grade_subject
    @grade_subject = GradeSubject.find(params[:id])
  end
end
