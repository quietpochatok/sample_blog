Rails.application.routes.draw do
  get '/'=> 'home#index'
  resource  :contacts, only: [:new, :create]
  resources :articles
  # get '/contacts/index' => 'contacts#index'
  # get '/contacts/' => 'contacts#index'
  # post '/contacts/' => 'contacts#create'
  # get '/contacts/new' => 'contacts#new'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
