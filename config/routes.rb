Rails.application.routes.draw do
  devise_for :student_users
  resources :student_users, only: :show
  devise_for :corp_users
  resources :students
  resources :corp_users, only: :show

  root to: 'students#index'
  get 'students/search'
end
