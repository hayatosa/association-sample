Rails.application.routes.draw do
  root to: "messages#index"
  resources :messages
  get 'users/index'
end
