class ChatroomsController < ApplicationController

  def index
    @chatrooms = current_user.my_chatrooms
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  # def create
    #  if Chatroom.between(params[:user_id], params[:teacher_id], params[:booking_id]).present?
    #   @chatroom = Chatroom.between(params[:user_id], params[:teacher_id]).first
    # else
    #   @chatroom = Chatroom.create(chatroom_params)
    # end
    #  redirect_to chatrooms_path
  # end

  private
   def chatroom_params
    params.permit(:user_id, :teacher_id, :booking_id)
   end
end
