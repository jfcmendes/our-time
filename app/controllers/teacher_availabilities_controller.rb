class TeacherAvailabilitiesController < ApplicationController
  def new
    @teacher = Teacher.find(params[:teacher_id])
    @teacher_availability = TeacherAvailability.new
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    @teacher_availability = TeacherAvailability.new(availability_params)
    @teacher_availability.teacher = current_user.teacher

    if @teacher_availability.save
      redirect_to teacher_path(@teacher.id)
    else
      render :new
    end
  end

  def destroy
    @teacher_availability = TeacherAvailability.find(params[:id])
    @teacher_availability.destroy
    redirect_to teacher_path(@teacher_availability.teacher)
  end

  private

  def availability_params
    params.require(:teacher_availability).permit(:day, :start_time, :end_time)
  end
end
