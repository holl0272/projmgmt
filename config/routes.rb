Projmgmt::Application.routes.draw do

  root :to => 'home#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users

  resources :clients do
    member do
      post :up
      post :down
    end
  end

  resources :projects do
    member do
      put :complete
    end
  end

end
