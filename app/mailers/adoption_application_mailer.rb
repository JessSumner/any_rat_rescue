class AdoptionApplicationMailer < ApplicationMailer
  def new_adoption_application_email(admin)
    @admin = admin
    mail(to: @admin.email, subject: "A new adoption application has been submitted")
  end
end
