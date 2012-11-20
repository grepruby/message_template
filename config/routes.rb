MessageManagement::Application.routes.draw do
  get "home/index"

  resources :messages

  resources :message_templates

  devise_for :users

  root :to => "home#index"

end
