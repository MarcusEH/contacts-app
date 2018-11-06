Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get '/contacts' => 'contacts#index'
  get 'contacts/new' => 'contacts#new'
  get '/contacts/:id' => 'contacts#show'
  post '/contacts' => 'contacts#create'
  get '/contacts/:id/edit' => 'contacts#edit'
  patch '/contacts/:id' => 'contacts#update'
  delete '/contacts/:id' => 'contacts#destroy'
  namespace :api do 
    get '/contacts/:id' => 'contacts#show'
    get '/contacts' => 'contacts#index'
    post '/contacts' => 'contacts#create'
    patch 'contacts/:id' => 'contacts#update'
    delete 'contacts/:id' => 'contacts#destroy'
    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'
  end
end
