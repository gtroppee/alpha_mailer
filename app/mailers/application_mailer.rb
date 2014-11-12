#encoding: utf-8

class ApplicationMailer < ActionMailer::Base
  def send_email(email)
    @email = email
    mail from: 'test@gmail.com', to: @email.recipients, subject: @email.subject
  end
end



