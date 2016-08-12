class Admin::SessionsController < ApplicationController
  before_action :save_login_state, only: [:new, :create]

  def new
  end

  def create
    user =  User.find_by(email: params[:email])
 
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to :admin_root, :notice => 'Logged in.'
    else
      flash.now.alert = 'Invalid email or password.'
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end

