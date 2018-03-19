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
    get '/new' => 'rooms#new'
    delete '/:id' => 'rooms#destroy'
    patch '/:id' => 'rooms#update'
    post '/' => 'rooms#create'
    get '/:id/edit' => 'rooms#edit'
    get '/:id/confirm' => 'rooms#confirm'
    post '/:id/confirm' => 'rooms#checkin'
    get '/:id' => 'rooms#show'
  end


  root to: 'rooms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
