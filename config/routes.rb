Treehouse::Application.routes.draw do
  get "profiles/show"

  devise_for :users

  devise_scope :user do
    get "signup", to: "devise/registrations#new", as: :signup
  end

  devise_scope :user do
    get "login", to: "devise/sessions#new", as: :login
  end

  devise_scope :user do
    get "logout", to: "devise/sessions#destroy", as: :logout
  end

  resources :statuses, path: "updates"
  get 'feed', to: 'statuses#index', as: :feed
  root to: 'statuses#index'

end
