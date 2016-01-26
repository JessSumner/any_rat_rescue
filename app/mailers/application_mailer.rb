class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"

  private

  def admin_email
    ENV["ADMIN_EMAIL"]
  end
end
