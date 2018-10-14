Rails.application.routes.draw do
  resources :studios
  ActiveAdmin.routes(self)
  root 'home#index'
  devise_for :users, :controllers => {:registrations => 'users/registrations'}
  devise_scope :user do
    get 'manager_edit', to: 'users/registrations#manager_edit', as: 'manager_edit'
    patch 'manager_update', to: 'users/registrations#manager_update', as: 'manager_update'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
