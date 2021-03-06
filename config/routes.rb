Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/contact'

  devise_for :users , :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :walks
  resources :issues
  root :to => 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
