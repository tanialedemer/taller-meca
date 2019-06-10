Rails.application.routes.draw do
  get 'cliente/index'
  get 'cliente/new'
  get 'cliente/show', to: 'cliente#show', as: 'cliente_show'
  post 'cliente/create', to: 'cliente#create', as: 'cliente_create'
  get 'cliente/edit/:id', to: 'cliente#edit', as: 'cliente_edit'
  patch 'cliente/edit/:id', to: 'cliente#update', as: 'cliente_update'
  get 'cliente/destroy/:id', to: 'cliente#destroy', as: 'cliente_destroy'
  get 'home/index'
  #devise_for :users
  devise_for :users, :controllers => { :registrations => "users/registrations" } 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
