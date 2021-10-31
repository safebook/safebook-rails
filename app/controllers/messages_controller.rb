class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    if message.save
      render json: {}
    else
      render status: 401, json: message.errors
    end
  end

  def inbox
    p params[:receiver]
    messages = Message.where(author: params[:receiver]).limit(20).all
    p messages
    render json: messages
  end

  def outbox
    p params[:author]
    messages = Message.where(author: params[:author]).limit(20).all
    p messages
    render json: messages
  end

  private
  def message_params
    params.permit(:author, :receiver, :content)
  end
end
