Rails.application.routes.draw do
  devise_for :users
  resources :companies, :subjects, :courses
  post 'subjects/new',to: 'subjects#create'
  post 'courses/new',to: 'courses#create'
  post 'companies/new',to: 'companies#create'
  get "/:page" => "static#show"
  
  root 'subjects#home'
end
