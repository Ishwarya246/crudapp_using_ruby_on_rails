Rails.application.routes.draw do
  get 'home/show'
  get 'home/edit'
  get 'home/add'
  
  root "home#index"
end
