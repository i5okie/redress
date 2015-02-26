Rails.application.routes.draw do
  get 'categories/attachments'

  root to: 'visitors#index'
  devise_for :users
end
