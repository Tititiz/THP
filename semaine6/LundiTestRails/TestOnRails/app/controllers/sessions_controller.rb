class SessionsController < ApplicationController


  def new
    @user = User.new
    
  end


  def create

  user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      log_in(user)
      flash[:success] = "coool"
      redirect_to root_path
    else
      flash[:danger] = "Mauvais mail/password"
      render 'new'
    end
  end

  def delete
    log_out
    redirect_to root_path
  end
end
