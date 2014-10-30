class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by_credentials(params[:user][:email],
                                    params[:user][:password])
    if user.nil?
      flash.now[:errors] ||= []
      flash.now[:errors] << "Bad Email/Password combination"
      render :new
    else
      login!(user)
      redirect_to user_url(user.id)
    end
  end

  def destroy
    current_user.try(:reset_session_token!)
    session[:session_token] = nil
    redirect_to new_session_url
  end

end
