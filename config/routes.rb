Rails.application.routes.draw do
  get 'products/index' => 'products'

  get 'products/import'

  get 'pages/index'

  devise_for :users

  resources :products do
    collection { post :import }
  end

  root to: "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
