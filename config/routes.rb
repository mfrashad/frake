Rails.application.routes.draw do
  root to: 'pages#home'
  resources :datum do
    collection do 
      get :data
    end
  end
  get '/home', to: 'pages#home'
  get '/output', to: 'pages#output'
  get '/final', to: 'pages#final'

end
