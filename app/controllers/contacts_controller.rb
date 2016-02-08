class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] =
        "It's good to hear from you. We will respond to your message shortly."
      redirect_to root_path
    else
      flash.now[:error] =
        "Please review your message, some information is missing."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(
      :name,
      :email,
      :cell,
      :message
    )
  end
end
