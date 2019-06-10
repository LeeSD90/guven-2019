class AdminMailer < ApplicationMailer
  default from: ENV["ADMIN_MAIL"]

  def notification_mail(email)
    @email = email
    mail(to: ENV["ADMIN_MAIL"], subject: 'New Sign up!')
  end
end
