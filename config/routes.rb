Rails.application.routes.draw do
  resources :studios do
    resources :reviews, only: [:create, :destroy]
  end
  resources :home, :except => :index
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'reviews/index', to: 'reviews#index', as: 'reviews_index'
  get 'search', to: 'home#search'
  devise_for :users, :controllers => {:registrations => 'users/registrations'}
  devise_scope :user do
    get 'manager_edit', to: 'users/registrations#manager_edit', as: 'manager_edit'
    patch 'manager_update', to: 'users/registrations#manager_update', as: 'manager_update'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
