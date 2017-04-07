Rails.application.routes.draw do
  get '/' => 'advisors#index'

  get '/advisors' => 'advisors#index'

  get '/advisors/new' => 'advisors#new'

  post '/advisors' => 'advisors#create'

  get '/advisors/:id' => 'advisors#show'

  get '/advisors/:id/edit' => 'advisors#edit'

  patch '/advisors/:id' => 'advisors#update'

  delete '/advisors/:id' => 'advisors#destroy'


#############################
  get '/clients' => 'clients#index'
  
  get '/clients/new' => 'clients#new'

  post '/clients' => 'clients#create' 

  get '/clients/:id' => 'clients#show'

  get 'clients/:id/edit' => 'clients#edit'

  patch '/clients/:id' => 'clients#update'

  delete '/clients/:id' => 'clients#destroy'

#############################

  get '/invitations' => 'invitations#index'
  
  get '/invitations/new' => 'invitations#new'

  post '/invitations' => 'invitations#create' 

  get '/invitations/:id' => 'invitations#show'

  get 'invitations/:id/edit' => 'invitations#edit'

  patch '/invitations/:id' => 'invitations#update'

  delete '/invitations/:id' => 'invitations#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
