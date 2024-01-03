Rails.application.routes.draw do
  resources :occupations   do
    collection do
      get :of_tday
    end
  end
  resources :regulations
  resources :calenders
  resources :rooms
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }

  root "rooms#index"
end
