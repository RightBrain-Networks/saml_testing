Rails.application.routes.draw do

  get '/saml/auth' => 'saml#new'
  post '/saml/auth' => 'saml#create'

end
