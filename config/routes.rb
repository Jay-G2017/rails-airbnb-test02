Rails.application.routes.draw do

  namespace :users do
    resources :lenses do
      resources :bookings
    end
  end
  resources :lenses, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
