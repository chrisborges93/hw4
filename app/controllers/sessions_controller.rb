class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.password == params[:password] 
      flash[:notice] = "Welcome!"
      redirect_to "/places"
    else
      flash[:notice] = "Invalid email or password."
      redirect_to "/login"
    end
  end

  def destroy
    flash[:notice] = "Goodbye."
  end
end

  