Rails.application.routes.draw do
  get 'program/lang'
  get 'postingan/index'
  get '/index' => 'home#index'
  get '/artikel' => 'home#artikel'
  get '/about' => 'home#about'
  get '/postingan' => 'postingan#index'
  get '/postingan/detail/:id' => 'postingan#detail'
  get '/postingan/input' => 'postingan#input'
  post '/postingan/create' => 'postingan#create'
  get '/' => 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
end
