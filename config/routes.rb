Rails.application.routes.draw do

  devise_for :users
  get "contact", to: "pages#contact"
  get "about", to: "pages#about"

  get "blog", to: redirect("https://ismaeljarias.com")

  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end

  root 'pages#home'
  
end