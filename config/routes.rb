Rails.application.routes.draw do
  

  root to: "home#index"
  devise_for :users
  get '/'=> 'home#index'
  # get 'contacts' => 'contacts#new'
  
  resource  :contacts, only: [:new, :create], path_names: {:new => ''}
  resources :articles do
    resources :comments, only: [:create]
  end
  # get 'terms/index' => 'terms#index'
  resources :terms, only: [:index]
  resources :about, only: [:index]
  # get '/contacts/index' => 'contacts#index'
  # get '/contacts/' => 'contacts#index'
  # post '/contacts/' => 'contacts#create'
  # get '/contacts/new' => 'contacts#new'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
