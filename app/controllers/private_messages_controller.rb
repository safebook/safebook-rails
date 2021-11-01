class PrivateMessagesController < ApplicationController
  def create
    message = PrivateMessage.new(private_message_params)
    if message.save
      #ActionCable.server.broadcast(
      #  "private_messages_#{message.author}", message)
      ActionCable.server.broadcast(
        "private_messages_#{message.receiver}", message)
      render json: {}
    else
      render status: 401, json: message.errors
    end
  end

  def get
    messages = PrivateMessage.where(author: params[:user])
      .or(PrivateMessage.where(receiver: params[:user]))
      .all
    render json: messages
  end

  private
  def private_message_params
    params.permit(:author, :receiver, :hidden_content)
  end
end
