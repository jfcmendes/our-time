class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end

  def show
  end

  def create
    if Chatroom.between(params[:user_id],params[:teacher_id],params[:booking_id]).present?
      @chatroom = Chatroom.between(params[:user_id], params[:teacher_id],params[:booking_id]).first
   else
      @chatroom = Chatroom.create!(chatroom_params)
   end
    redirect_to chatrooms_path
  end

  private
   def chatroom_params
    params.permit(:user_id, :teacher_id, :booking_id)
   end
end
