Rails.application.routes.draw do
  resources :users do
    resources :losts do
      member do
        get :toggle_find
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
