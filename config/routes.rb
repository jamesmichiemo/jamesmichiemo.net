Rails.application.routes.draw do
  namespace :admin do
    root to: 'pieces#index'

    resources :pieces do
      # put :unpublish, :on => :member
      # put :publish,  :on => :member
    end
  end

  resources :pieces, :only => [:index, :show]

  root 'welcome#index'
end
