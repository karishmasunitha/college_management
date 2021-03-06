Rails.application.routes.draw do
  resources :scores
  resources :subjects
  devise_for :users
  resources :users, only: [:index, :edit, :update, :show]
  resources :exams

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
