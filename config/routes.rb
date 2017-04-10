Rails.application.routes.draw do
  
  get '/' => 'home_pages#index'

  get '/home' => 'home_pages#index'
  
  get '/about' => 'home_pages#about'

  get '/esg' => 'home_pages#esg'

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

#############################

  get '/proposals' => 'proposals#index'
  
  get '/proposals/new' => 'proposals#new'

  post '/proposals' => 'proposals#create' 

  get '/proposals/:id' => 'proposals#show'

  get 'proposals/:id/edit' => 'proposals#edit'

  patch '/proposals/:id' => 'proposals#update'

  delete '/proposals/:id' => 'proposals#destroy'

#############################
  
  get '/risk_models' => 'risk_models#index'
  
  get '/risk_models/new' => 'risk_models#new'

  post '/risk_models' => 'risk_models#create' 

  get '/risk_models/:id' => 'risk_models#show'

  get 'risk_models/:id/edit' => 'risk_models#edit'

  patch '/risk_models/:id' => 'risk_models#update'

  delete '/risk_models/:id' => 'risk_models#destroy'

#############################

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

  get '/signup' => 'sessions#signup'

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
