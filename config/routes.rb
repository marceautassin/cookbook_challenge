Rails.application.routes.draw do
  devise_for :users
  root to: 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipes do
    resources :doses, only: %w[new create destroy], shallow: true
  end
end
