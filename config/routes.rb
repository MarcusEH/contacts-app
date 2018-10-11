Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/first_contact_url' => 'contacts#first_contact_action'
    get '/all_contacts_url' => 'contacts#all_contacts'
  end
end
