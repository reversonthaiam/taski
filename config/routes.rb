Rails.application.routes.draw do
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/edit'
  
  get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  get "error", to: "pages#error"

  get "blog", to: redirect('https://www.google.com.br')

  resources :projects

  root 'pages#home'

  get "*path", to: redirect("/error")

end
