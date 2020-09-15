class MessagesController < ApplicationController
  def create
    # /chatrooms/:chatroom_id/messages
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    # chatroom in which we are in / it links this chatroom to the message
    @message.chatroom = @chatroom
    # a message also belongs to a user so we need to pass a user
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: {message: @message})
      )
      redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
    else
      render "chatrooms/show"
    end
  end

  private
  def message_params
    params.require(:message).permit(:content)
  end
end
