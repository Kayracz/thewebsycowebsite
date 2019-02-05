Rails.application.routes.draw do
  resources :contacts
  root to: 'home#index'

  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/copyright'

  get 'contacts/new'
  get 'contacts/show'
  get 'contacts/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
