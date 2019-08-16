Rails.application.routes.draw do
  root to: 'pages#home'
  resources :datum do
    collection do 
      get :data
    end
  end
  get '/:static_page', to: 'pages#show'
end
