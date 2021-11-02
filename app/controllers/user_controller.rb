class UserController < ApplicationController

  def all
    inbox       = SignedMessage.where(receiver: params[:user]).where.not(author: params[:user]).all
    outbox      = SignedMessage.where(author: params[:user]).where.not(receiver: params[:user]).all
    published   = SignedMessage.where(author: params[:user], receiver: params[:user]).all

    following   = Contact.where(author: params[:user]).all.map(&:receiver)
    followers   = Contact.where(receiver: params[:user]).all.map(&:author)

    render json: {
      inbox: inbox,
      outbox: outbox,
      published: published,
      following: following,
      followers: followers
    }
  end

end
