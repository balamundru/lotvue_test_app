Rails.application.routes.draw do
  resources :users do
    get "/images" => "users#images"
  end
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
