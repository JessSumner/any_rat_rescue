class NewVolunteerApplicationMailer < ApplicationMailer
  add_template_helper ApplicationHelper

  def volunteer_notification(volunteer_application)
    @volunteer_application = volunteer_application
    mail(to: admin_email,
         subject: "A new volunteer application has been submitted")
  end
end
