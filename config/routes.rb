Rails.application.routes.draw do
root :to => 'products#index'
  resources :products do
    resources :reviews
  end

  resources :users

end
