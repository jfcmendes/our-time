class BookingsController < ApplicationController
  def create
    @booking = Booking.create(booking_params)
    redirect_to bookings_path
  end

  def new
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
      { redirect_to booking_path(@booking.id), notice: 'Your booking is successfully updated' }
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])

    @booking.destroy
    { redirect_to booking_path, notice: 'Your booking is successfully canceled.' }
  end

  def product_params
    params.require(:booking).permit(:teacher_id, :user_id, :day, :hour, :price, :students_number, :speciality)
  end
end

