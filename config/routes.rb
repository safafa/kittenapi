Rails.application.routes.draw do
  root 'kittens#index'
  namespace :api do
    namespace :v1 do
     resources :kittens, only:[:index, :show, :new, :create, :edit, :update, :destroy]
    end
  end

  resources :kittens, only:[:index, :show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
