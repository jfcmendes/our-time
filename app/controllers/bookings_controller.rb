class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end
  
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking.id)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
      redirect_to booking_path(@booking.id), notice: 'Your booking is successfully updated!'
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])

    @booking.destroy
    redirect_to booking_path, notice: 'Your booking is successfully canceled.'
  end

  private 

  def booking_params
    params.require(:booking).permit(:teacher_id, :date, :students)
  end
end

