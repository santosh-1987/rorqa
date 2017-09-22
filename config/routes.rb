Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  resources :comments
  resources :subjects
  resources :questions do
    resources :answers do
      get "/comments", to: 'questions#fetch_comments', on: :member
    end
    get "/comments", to: 'questions#fetch_comments', on: :member
  end
  resources :tags
  root :to => "subjects#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
