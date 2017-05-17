Rails.application.routes.draw do
  resources :questions do
    resources :answers
  end
  resources :tags
  resources :dashboards
  root :to => "dashboards#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
