class MailersController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: [:send_email]

  def send_email
    email = Email.new(email_params)
    ApplicationMailer.send_email(email).deliver
  end

  private
    def email_params
      hash = {}
      [:subject, :recipients, :body].each do |arg|
        hash[arg] = params[arg]
      end
      hash
    end
end
