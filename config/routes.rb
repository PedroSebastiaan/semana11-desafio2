Rails.application.routes.draw do
  post 'projects/created'
  get 'projects/new'
  get 'projects/dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'projects#new'
end
