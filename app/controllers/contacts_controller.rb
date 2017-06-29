class ContactsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.name = current_user.username
    @contact.email = current_user.email
    if @contact.valid?   
      @contact.save
    else
      render action: 'new'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
