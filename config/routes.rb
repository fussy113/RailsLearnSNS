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

  scope '/rooms' do
    get '/' => 'rooms#index'
    get '/:id' => 'rooms#show'
    get '/new' => 'rooms#new'
    post '/' => 'rooms#create'
    get '/:id/edit' => 'rooms#edit'
    put '/:id' => 'rooms#update'
    delete '/:id' => 'rooms#destroy'
    post '/:id/confirm' => 'rooms#confirm'
  end

  root to: 'rooms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
