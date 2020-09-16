class Teacher::BookingsController < ApplicationController
  def index
    @bookings = current_user.teacher.bookings
  end
end
