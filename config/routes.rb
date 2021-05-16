Rails.application.routes.draw do

  resources :notekeywordlinks
  resources :ntags
  resources :keywords
  resources :notes
  get 'dates/dates'
  get 'tags/tags'
  get 'index/index'
  get 'home/index'
  root 'takenote#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
