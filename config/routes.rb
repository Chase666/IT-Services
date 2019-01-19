Rails.application.routes.draw do
  resources :companies, :subjects, :courses
  post 'subjects/new',to: 'subjects#create'
  post 'courses/new',to: 'courses#create'
  post 'companies/new',to: 'companies#create'
  get '/about', :to => redirect('/about.html')
  root 'subjects#home'
end
