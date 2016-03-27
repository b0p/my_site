Rails.application.routes.draw do
  root "websites#index"

  resources :websites
  resources :messages
  resources :blogposts
  resources :logins

  get '/resume', to: 'resumes#index'
end
