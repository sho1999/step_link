Rails.application.routes.draw do
  devise_for :student_users
  root to: 'students#index'
  get 'students/search'
  resources :students
  resources :student_users, only: :show
end
