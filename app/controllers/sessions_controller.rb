class SessionsController < ApplicationController
  def new

  end

  def create
    session[:name] = params[:name]

    if session[:name].blank?
      redirect_to login_path
    else
      redirect_to secret_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to login_path
  end
end
