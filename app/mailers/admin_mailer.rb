class AdminMailer < ApplicationMailer
  default from: ENV["ADMIN_GMAIL"]

  def notification_mail(email)
    @email = email
    puts "sendingggg mail!"
    mail(to: ENV["ADMIN_MAIL"], subject: 'New Sign up from - ' + @email)
  end
end
