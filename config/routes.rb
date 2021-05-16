Rails.application.routes.draw do

  resources :notekeywordlinks
  resources :keywords
  resources :notes
  get 'tags/tags'
  get 'index/index'
  get 'home/index'
  get 'notes/index'
  root 'notes#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
