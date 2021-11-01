class ContactsController < ApplicationController
  def create
    contact = Contact.new(contact_params)
    if contact.save
      render json: {}
    else
      render status: 401, json: contact.errors
    end
  end

  def get
    contacts = Contact.where(author: params[:user])
      .or(Contact.where(receiver: params[:user]))
      .all
    render json: contacts
  end

  def delete
    contact = Contact.where(author: params[:author], receiver: params[:user])
    contact.destroy
    render json: {}
  end

  private
  def contact_params
    params.permit(:author, :receiver, :sig)
  end
end
