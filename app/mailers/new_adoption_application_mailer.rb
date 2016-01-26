class NewAdoptionApplicationMailer < ApplicationMailer
  def notification(adoption_application)
    @adoption_application = adoption_application
    mail(to: admin_email,
         subject: "A new adoption application has been submitted")
  end

  private

  def admin_email
    ENV["ADMIN_EMAIL"]
  end
end
