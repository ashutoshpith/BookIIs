Rails.application.routes.draw do
  devise_for :users
  resources :bookpics
  get 'books/new'
  get 'welcome/index'


  resources :books



  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
