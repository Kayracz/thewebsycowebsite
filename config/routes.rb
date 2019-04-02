Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  devise_for :admins
  resources :messages
  resources :contacts
  root to: 'home#index'

  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/copyright'
  get 'home/pricing'
  get 'home/post'

  get 'contacts/new'
  get 'contacts/show'
  get 'contacts/index'

  get 'messages/new'
  get 'messages/show'
  get 'messages/index'

  get 'posts/new'
  get 'posts/show'
  get 'posts/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
