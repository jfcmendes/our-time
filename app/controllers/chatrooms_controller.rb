class ChatroomsController < ApplicationController

  def index
    @chatrooms = current_user.my_chatrooms
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.create(chatroom_params)
    redirect_to chatrooms_path
  end

  def new
    @chatroom = Chatroom.new
  end

  private
   def chatroom_params
    params.permit(:user_id, :teacher_id, :booking_id)
   end
end
