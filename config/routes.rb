Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  get "home" => "home#index"
  get "home/querystring" => "home#querystring"
  get "home/modeldemo" => "home#modeldemo"
  get "home/datetime" => "home#datetime"
  get "home/conditional" => "home#conditional_rendering"
  get "home/loops" => "home#loops"
  get "logdemo" => "log_demo#index"
  get "loadusers" => "rest_client#load_users"
  get "loadcards" => "rest_client#load_user_cards"
  get "loaduser/:id" => "rest_client#load_user_details", as: "LoadUserDetails" # use an alias
  get "showuser" => "rest_client#show_user_details"
  get "employees" => "employees#index", as: "employees"
  get "employee/:id" => "employees#show", as: "employee"
  get "employee/edit/:id" => "employees#edit", as: "edit_employee"
end
