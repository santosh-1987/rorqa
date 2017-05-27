Rails.application.routes.draw do
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
