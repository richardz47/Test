Rails.application.routes.draw do
  get '/newevent', to: 'events#new'
  post '/newevent', to: 'events#create'
  
  events GET    /events(.:format)          events#index

  get '/displayevents', to: 'events#display'

  root 'welcome#home'

  get '/about', to: 'welcome#about'
  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  
  #login form
  get '/login', to: 'sessions#new'
  #logging in
  post '/login', to: 'sessions#create'
  #logging out
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :events

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
