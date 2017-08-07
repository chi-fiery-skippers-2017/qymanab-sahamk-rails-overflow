Rails.application.routes.draw do
  resources :questions do
    resources :answers
  end

  resources :users
  resources :sessions

  get '/logout', to: "sessions#destroy"
  root 'questions#index'
end
