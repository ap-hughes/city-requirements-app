Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#new'
  resources :users, only: [:new, :create, :show, :edit, :update] do
    resources :requirements, only: [:new, :create]
    resources :user_requirements, only: [:new, :create]
  end
end
