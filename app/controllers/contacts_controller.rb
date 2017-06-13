class ContactsController < ApplicationController
  def new
  end
  def create
     # render plain: params[:contact].inspect
    @contact = Contact.new(contact_params)
    if @contact.valid?
      @contact.save
    else
      render action: 'new'
    end
  end
  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
