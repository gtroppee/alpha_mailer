require "rails_helper"

RSpec.describe "Mailer" do

  it "send user password reset url" do
    expect do

     post(mailers_send_email_path, {
      subject: 'This is the subject', 
      body: 'This is the body',
      recipients: 'qwed@ddwed.fr, dwqd@dwd.dfr'
     }, { 'HTTP_CONTENT_TYPE' => "application/json" })
    end.to change{ ActionMailer::Base.deliveries.count }.by(1)
  end

end