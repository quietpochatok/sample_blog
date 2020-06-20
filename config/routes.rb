Rails.application.routes.draw do
  get '/'=> 'home#index'
  resources :articles
  # get '/contacts/index' => 'contacts#index'
  get '/contacts/index' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
  post '/contacts/' => 'contacts#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
