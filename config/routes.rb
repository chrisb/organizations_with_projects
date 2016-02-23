Rails.application.routes.draw do
  devise_for :users

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  root to: 'pages#index'

  # other routes should preceed the ones below

  resources :organizations, only: [:index, :new, :create]
  resources :organizations, only: [:show, :edit], path: '' do
    resources :projects, only: [:index, :new, :create]
    resources :projects, only: [:show, :edit], path: '' do
      # put project-specific stuff here
    end
  end
end
