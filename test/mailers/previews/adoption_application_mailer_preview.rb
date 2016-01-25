# Preview all emails at http://localhost:3000/rails/mailers/adoption_application_mailer
class AdoptionApplicationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/adoption_application_mailer/new_adoption_application_preview
  def new_adoption_application_preview
    adoption_application = AdoptionApplication.last
    AdoptionApplicationMailer.new_adoption_application(adoption_application)
  end
end
