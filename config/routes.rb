Rails.application.routes.draw do
  root to: 'pages#product'

  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :posts
  resources :properties

  get "/product" => "pages#product", as: :product
  
  get "/home" => "pages#home", as: :home

  get "/compte" => "pages#compte", as: :compte
  
  get "/contact" => "pages#contact", as: :contact

  get "/feature" => "pages#feature", as: :feature

  get "/for_sale" => "pages#for_sale", as: :for_sale

  get "/advertise" => "pages#advertise", as: :advertise

  get "/blog" => "posts#latest", as: :blog

  get "/users" => "admin#users", as: :users

  get "/dashboard" => 'dashboard#index', as: :dashboard

  get "/profile/:id" => 'dashboard#profile', as: :profile

  post "/agent/message" =>  "properties#email_agent", as: :email_agent
end
