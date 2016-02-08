class ContactMessagesController < ApplicationController
  def new
    @contact_message = ContactMessage.new
  end

  def create
    @contact_message = ContactMessage.new(contact_message_params)
    if @contact_message.save
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

  def contact_message_params
    params.require(:contact_message).permit(
      :name,
      :email,
      :cell,
      :message
    )
  end
end
