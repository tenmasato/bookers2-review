Rails.application.routes.draw do

  devise_for :users
  root  'homes#top'
  get 'home/about' => 'homes#about'


  resources :books,only: [:new,:create,:index,:show,:destroy,:edit,:update]do
    resource :favorites,only:[:create,:destroy]
    resources :book_comments,only:[:create,:destroy]
  end
  resources :users,only: [:show,:index,:edit,:update]
end