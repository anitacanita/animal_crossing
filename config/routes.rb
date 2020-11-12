Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resources :home, only: [:index] do
    collection do
      post :show_villager #(POST welcome/add_villager)
    end
  end
end
