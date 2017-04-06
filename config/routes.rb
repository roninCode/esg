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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
