class AdoptionApplicationMailer < ApplicationMailer
  def new_adoption_application(adoption_application)
    @adoption_application = adoption_application
    mail(to: admin_email, subject: "A new adoption application has been submitted")
  end

  private

  def admin_email
    "email@example.com"
  end
end
