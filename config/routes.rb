Rails.application.routes.draw do
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/copyright'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'home#index'
end
