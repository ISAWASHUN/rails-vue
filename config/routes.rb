Rails.application.routes.draw do
  resources :occupations
  resources :regulations
  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :calenders
  resources :rooms
  root 'rooms#index'
end
