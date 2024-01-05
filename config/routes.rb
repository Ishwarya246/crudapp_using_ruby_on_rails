Rails.application.routes.draw do
  resources :student_infos
  get 'home/show'
  get 'home/edit'
  get 'home/add'
  
  root "home#index"
end
