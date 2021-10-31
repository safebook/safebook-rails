class SignedMessagesController < ApplicationController
  def create
    message = SignedMessage.new(signed_message_params)
    if message.save
      render json: {}
    else
      render status: 401, json: message.errors
    end
  end

  def inbox
    render json: SignedMessage.where(receiver: params[:user]).limit(20).all
  end

  def outbox
    render json: SignedMessage.where(author: params[:user]).limit(20).all
  end

  private
  def signed_message_params
    params.permit(:author, :receiver, :content, :sig)
  end
end
