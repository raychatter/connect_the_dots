class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(personal_email: params[:session][:personal_email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or root_url
    else
      flash.now[:error] = 'Invalid personal_email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end