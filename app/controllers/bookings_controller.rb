class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @teacher = Teacher.find(params[:teacher_id])
    @booking = Booking.new

    @days = @teacher.teacher_availabilities.map do |t|
      t.day
    end

    @hours = @teacher.teacher_availabilities.map do |t|
      "#{t.start_time} - #{t.end_time}"
    end
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    @booking = Booking.new(booking_params)
    @booking.teacher = @teacher
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking.id)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:day, :hour, :students_number)
  end
end

