Rails.application.routes.draw do
  resources :companies, :categories, :courses
  get '/search', to: 'application#search'
  get '/about', to: 'application#about'
  root 'application#index'
end
