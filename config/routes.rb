Rails.application.routes.draw do
  namespace :admin do
    root to: 'pieces#index'

    resources :pieces do
      put :unpublish, :on => :member
      put :publish,  :on => :member
    end

    resources :sessions, :only => [:new, :create, :destroy]
    get '/logout' => 'sessions#destroy', :as => :logout

    resources :video_streams
  end

  resources :pieces, :only => [:index, :show]
  resources :photos, :only => [:index]
  resources :audio, :only => [:index]

  root 'pieces#index'
end
