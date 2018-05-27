Rails.application.routes.draw do
  root to: 'discussions#index'
  resources :discussions

  #          :provider is a variable
  get '/auth/:provider/callback' => 'sessions#new'
  get '/auth/sign-out' => 'sessions#sign_out', as: :sign_out
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
