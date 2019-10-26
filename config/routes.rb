Rails.application.routes.draw do
  resources :songs, :genres, :artists, only: [:index, :new, :create, :show, :edit, :update]
end
