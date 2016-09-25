Rails.application.routes.draw do
  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  namespace :admin do
    root to: 'pieces#index'

    resources :pieces do
      put :unpublish, :on => :member
      put :publish,  :on => :member
      resources :pictures
      resources :words
    end

    resources :sessions, :only => [:new, :create, :destroy]
    get '/logout' => 'sessions#destroy', :as => :logout

    resources :video_streams
  end

  resources :pieces, :only => [:index, :show] do
    resources :pictures
    resources :words
  end

  resources :audio, :only => [:index]
  resources :pictures
  resources :words

  root 'pieces#index'
end
