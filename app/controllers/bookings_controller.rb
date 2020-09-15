class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.update(date_params)

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

  def date_params
    params[:booking][:date] = params[:booking][:date].to_datetime
    params.require(:booking).permit(:date)
  end

  def booking_params
    params.require(:booking).permit(:teacher_id, :user_id)
  end
end

