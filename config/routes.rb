Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/contacts/:id' => 'contacts#show'
    get '/contacts' => 'contacts#index'
    post '/contacts' => 'contacts#create'
    patch 'contacts/:id' => 'contacts#update'
    delete 'contacts/:id' => 'contacts#destroy'
  end
end
