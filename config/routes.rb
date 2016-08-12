Rails.application.routes.draw do
  namespace :admin do
    root to: 'pieces#index'

    resources :pieces do
      # put :unpublish, :on => :member
      # put :publish,  :on => :member
    end

    resources :sessions, :only => [:new, :create, :destroy]
    get '/logout' => 'sessions#destroy', :as => :logout
  end

  resources :pieces, :only => [:index, :show]

  root 'welcome#index'
end
