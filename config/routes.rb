Rails.application.routes.draw do
  get 'comment/create'
  get 'room/index'
  get 'room/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
