Rails.application.routes.draw do
  # devise_for :corp_users, controllers: {
  #   sessions: 'corp_user/sessions',
  #   passwords: 'corp_user/passwords',
  #   registrations: 'corp_user/registrations'
  # }
  root to: 'students#index'
  get 'students/search'

  resources :students
  devise_for :student_users
  resources :student_users, only: :show

  devise_for :corp_users
  resources :corp_users, only: :show
end
