class PrivateMessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "private_messages_#{params[:user]}"
  end
end
