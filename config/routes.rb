Rails.application.routes.draw do
  root to: 'home#top'
  get 'home/about' => 'home#about' , as: 'about'
  devise_for :users
  resources :users, only: [:show,:index,:edit,:update]
  resources :books, only: [:show,:index,:edit,:update,:create,:destroy]
end