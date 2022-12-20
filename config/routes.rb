Rails.application.routes.draw do
  root "pages#home"

  resources :archmages
  resources :mages
  resources :schools


end
