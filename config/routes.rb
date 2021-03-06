Rails.application.routes.draw do
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "posts#index"
  resources :posts do
    resources :comments,only: [:create]
  end
  resources :users,only: [:show] 
 
  
end
