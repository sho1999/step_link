Rails.application.routes.draw do
  devise_for :student_users
  root to: 'students#index'
  resources :students do
    collection do
      get 'search'
    end
  end
  resources :student_users, only: :show
end
