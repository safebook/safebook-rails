class PrivateMessagesController < ApplicationController
  def create
    message = PrivateMessage.new(private_message_params)
    if message.save
      render json: {}
    else
      render status: 401, json: message.errors
    end
  end

  def get
    messages = PrivateMessage.where(author: params[:author], receiver: params[:receiver])
      .or(PrivateMessage.where(author: params[:receiver], receiver: params[:author]))
      .limit(20).all
    render json: messages
  end

  private
  def private_message_params
    params.permit(:author, :receiver, :hidden_content)
  end
end
