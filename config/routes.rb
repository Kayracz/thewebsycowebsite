Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/copyright'
  resources :contacts
  resources 'contacts', only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'home#index'
end
