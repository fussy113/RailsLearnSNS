Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :sessions => 'users/sessions',
    :passwords => 'users/passwords',
    :registrations => 'users/registrations'

  }

  devise_scope :user do
    post 'users/sign_up/confirm' => 'users/registrations#confirm'
    post 'users/sign_up/complete' => 'users/registrations#complete'
  end

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
