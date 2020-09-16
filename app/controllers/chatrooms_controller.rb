class ChatroomsController < ApplicationController

  def index
    @chatrooms = current_user.my_chatrooms
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @chatroom_array = Chatroom.where(user_id: current_user.id, teacher_id: @booking.teacher.id)

    if @chatroom_array.length == 0
      @chatroom = Chatroom.create(user_id: current_user.id, teacher_id: @booking.teacher.id)
      redirect_to chatroom_path(@chatroom)
    else
      @chatroom = @chatroom_array.first
      redirect_to chatroom_path(@chatroom)
    end
  end

  private
   def chatroom_params
    params.require(:chatroom).permit()
   end
end
