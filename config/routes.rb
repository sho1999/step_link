Rails.application.routes.draw do
  devise_for :student_users
  resources :student_users, only: :show
  resources :students do
    collection do
      get 'search'
    end
  end
  devise_for :corp_users
  resources :corp_users, only: [:show, :index] do 
    collection do
      get 'search'
    end
  end

  root to: 'students#index'
end