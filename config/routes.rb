Rails.application.routes.draw do
  devise_for :users
  resources :companies, :subjects, :courses, :languages
  post 'subjects/new',to: 'subjects#create'
  post 'courses/new',to: 'courses#create'
  post 'companies/new',to: 'companies#create'
  post 'languages/new',to: 'languages#create'
  get "/:page" => "static#show"

  root 'subjects#home'
end
