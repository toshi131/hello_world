Rails.application.routes.draw do
<<<<<<< HEAD
=======

>>>>>>> sign_up
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/
  root("static_pages#home")
  get "help"=>"static_pages#help"
  get "about"=>"static_pages#about"
  get "login"=>"static_pages#login"
  get "contact"=>"static_pages#contact"
<<<<<<< HEAD
  
  resources :users
=======
  get "signup" => "users#new"

resources :users
>>>>>>> sign_up
end
