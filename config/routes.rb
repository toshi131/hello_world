Rails.application.routes.draw do
  # get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/
  root("static_pages#home")
  get "help"=>"static_pages#help"
  get "about"=>"static_pages#about"
  # get "login"=>"static_pages#login"
  get "contact"=>"static_pages#contact"
  get "signup" => "users#new"
  get 'login'   => 'sessions#new'
  post'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
 
  
  resources :users 
    

end
