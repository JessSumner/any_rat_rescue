# Preview all emails at http://localhost:3000/rails/mailers/new_adoption_application_mailer
class NewAdoptionApplicationMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/new_adoption_application_mailer/notification_preview
  def notification_preview
    adoption_application = AdoptionApplication.first
    NewAdoptionApplicationMailer.notification(adoption_application)
  end
end
