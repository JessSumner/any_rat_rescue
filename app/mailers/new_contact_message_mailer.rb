class NewContactMessageMailer < ApplicationMailer
  def contact_message_notification(contact_message)
    @contact_message = contact_message
    mail(
      to: admin_email,
      subject: "A visitor to Any Rat Rescue has sent a message."
    )
  end
end
