Rails.application.routes.draw do
  root "websites#index"

  resources :websites
  resources :messages

  get '/resume', to: 'resumes#index'
end
