Rails.application.routes.draw do
  get '/'=> 'home#index'
  # get 'contacts' => 'contacts#new'
  
  resource  :contacts, only: [:new, :create], path_names: {:new => ''}
  resources :articles
  # get 'terms/index' => 'terms#index'
  resources :terms, only: [:index], path_names: {:index => ''}
  # get '/contacts/index' => 'contacts#index'
  # get '/contacts/' => 'contacts#index'
  # post '/contacts/' => 'contacts#create'
  # get '/contacts/new' => 'contacts#new'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
