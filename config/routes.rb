Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope :api do
    # resources :users, :defaults => { :format => 'json' }
      get '/users' => 'users#index', :defaults => { :format => 'json' }
      get '/user/:id' => 'users#show', :defaults => { :format => 'json' }
      post '/user' => 'users#create', :defaults => { :format => 'json' }
      put '/user/:id' => 'users#update', :defaults => { :format => 'json' }
      delete '/user/:id' => 'users#destroy', :defaults => { :format => 'json' }
      get '/typeahead/:search' => 'users#search', :defaults => { :format => 'json' }

  end
end
