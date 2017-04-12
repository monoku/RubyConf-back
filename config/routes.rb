Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get 'activities', to: "activities#index"

  resource :sessions, only: [:new, :create, :destroy]
end
