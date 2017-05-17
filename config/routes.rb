Rails.application.routes.draw do
  resources :comments
  resources :questions do
    resources :answers
  end
  resources :dashboards
  root :to => "dashboards#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
