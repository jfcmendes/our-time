class ReviewsController < ApplicationController

  def index
    @reviews = @booking.reviews
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @review.user = current_user

    if @review.save
      flash[:alert] = 'Thanks for the review!'
      redirect_to booking_path(@booking.id)
    else
      flash[:alert] = 'Oops, Something went wrong'
      render :new
    end
  end

  private
    def review_params
      params.require(:review).permit(:rating, :content, :booking_id, :user_id)
    end
end
