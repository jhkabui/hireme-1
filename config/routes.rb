Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :jobs, only: [:index, :show] do
    resources :applications, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/progress", to: "pages#dashboard", as: "dashboard"
  get "/profile/", to: "profiles#show"
end
