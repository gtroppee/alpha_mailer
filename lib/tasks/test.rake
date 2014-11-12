desc "test mail sending feature"

namespace :m do
  task  test: :environment do
    # @mail = HTTParty.post('http://localhost:3000/mailers/send', 
    #     :body => { :subject => 'This is the screen name', 
    #                :issue_type => 'Application Problem', 
    #                :status => 'Open', 
    #                :priority => 'Normal', 
    #                :description => 'This is the description for the problem'
    #              }.to_json,
    #     :headers => { 'Content-Type' => 'application/json' } )
  
    HTTParty.post('http://localhost:3000/mailers/send_email', 
        :body => { subject: 'This is the subject', 
                   body: '*This is the body*',
                   recipients: 'qwed@ddwed.fr, dwqd@dwd.dfr'
                 }.to_json,
        :headers => { 'Content-Type' => 'application/json' } )
  end
end
