class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])

    @availabilities_by_date = @teacher.teacher_availabilities.group_by { |availability| availability.day }
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user

    if @teacher.save
      redirect_to teacher_path(@teacher.id)
    else
      render :new
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])

    if @teacher.update(teacher_params)
      redirect_to teacher_path(@teacher.id)
    else
      render :edit
    end
  end

  # Should we have a destroy or it will be deleted along with the destroy_user#registrations?

  private

  def teacher_params
    params.require(:teacher).permit(:description, :price, :fee, :max_students, :max_distance, :photo, speciality: [])
  end
end
