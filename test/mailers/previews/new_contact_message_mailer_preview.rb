# Preview all emails at http://localhost:3000/rails/mailers/new_contact_mailer_message
class NewContactMessagePreview < ActionMailer::Preview
  def contact_message_preview
    contact_message = ContactMessage.first
    NewContactMessageMailer.contact_message_notification(contact_message)
  end
end
