# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview
  AdminMailer.notification_mail("test@gmail.com")
end
