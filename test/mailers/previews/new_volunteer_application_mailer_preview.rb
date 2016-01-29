class NewVolunteerApplicationMailerPreview < ActionMailer::Preview
  # http://localhost:3000/rails/mailers/new_volunteer_application_mailer/volunteer_notification_preview
  def volunteer_notification_preview
    volunteer_application = VolunteerApplication.first
    NewVolunteerApplicationMailer.volunteer_notification(volunteer_application)
  end
end
