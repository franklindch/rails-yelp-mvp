Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create] do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :reviews, only: [:new, :create]
  end
end
