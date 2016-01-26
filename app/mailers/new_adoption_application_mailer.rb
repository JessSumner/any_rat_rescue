class NewAdoptionApplicationMailer < ApplicationMailer
  def notification(adoption_application)
    @adoption_application = adoption_application
    mail(to: admin_email,
         subject: "A new adoption application has been submitted")
  end
end
