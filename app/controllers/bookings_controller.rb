class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @teacher = Teacher.find(params[:teacher_id])
    @booking = Booking.new
  end
  
  def create
    @teacher = Teacher.find(params[:teacher_id])
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to teacher_booking_path(booking.id)
    else
      render :new
    end
  end

  # def edit
  #  @booking = Booking.find(params[:id])
  # end

  # def update
  #  @booking = Booking.find(params[:id])

  #  if @booking.update(booking_params)
  #    redirect_to booking_path(@booking.id), notice: 'Your booking is successfully updated!'
  #  else
  #    render :edit
  #  end
  # end

  # def destroy
  #  @booking = Booking.find(params[:id])

  #  @booking.destroy
  #  redirect_to booking_path, notice: 'Your booking is successfully canceled.'
  #end

  private 

  def booking_params
    params.require(:booking).permit(:day, :hour, :students_number)
  end
end

