Rails.application.routes.draw do
  get '/advisors' => 'advisors#index'

  get '/advisors/new' => 'advisors#new'

  post '/advisors' => 'advisors#create'

  get '/advisors/:id' => 'advisors#show'

  get '/advisors/:id/edit' => 'advisors#edit'

  patch '/advisors/:id' => 'advisors#update'

  # delete '/advisors/:id' => 'advisors#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
