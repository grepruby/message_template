MessageManagement::Application.routes.draw do
  get "home/index"

  resources :messages

  resources :message_templates

  devise_for :users
  
  namespace :user do
    resources :photos, :only => [:index, :new, :create, :destroy]
  end

  root :to => "home#index"

end
