Rails.application.routes.draw do
  resources :comments, :except => [:index] do
    get "/:commentable_type/:commentable_id", to: 'comments#index', on: :collection, :as => :fetch
  end
  resources :subjects
  resources :questions do
    resources :answers
  end
  resources :tags
  root :to => "subjects#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
