Rails.application.routes.draw do
  devise_for :users
  as :user do
    get 'users', :to => 'profiles#show', :as => :user_root # Rails 3
  end

  root to: 'pages#home'

  resources :jobs, only: [:index, :show] do
    resources :applications, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/progress", to: "pages#dashboard", as: "dashboard"
  get "/profile/", to: "profiles#show"
end
