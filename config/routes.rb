Mailer::Application.routes.draw do
  namespace :mailers, defaults: {format: 'json'} do
    post :send_email
  end
end
