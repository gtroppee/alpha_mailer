require 'rails_helper'

# fix the error when using constant ApplicationMailer
RSpec.describe "ApplicationMailer" do
  it 'fewf' do
    expect(true).to be_truthy
  end
  describe "password_reset" do
    let(:hash) do 
      {
        subject: 'This is the subject', 
        body: '*This is the body*',
        recipients: 'qwed@ddwed.fr, dwqd@dwd.dfr'
      }       
    end
    let(:mail) { ApplicationMailer.send_email(Email.new(hash)) }

    it "send user password reset url" do
      expect(mail.subject).to eq("This is the subject")
      expect(mail.body.raw_source).to eq("<p><em>This is the body</em></p>")
      expect(mail.to).to eq(['qwed@ddwed.fr', 'dwqd@dwd.dfr'])
      expect(mail.from).to eq(["test@gmail.com"])
      # mail.body.encoded.should match(edit_password_reset_path(user.password_reset_token))
    end
  end
end