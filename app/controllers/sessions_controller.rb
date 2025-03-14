class SessionsController < ApplicationController
  def new
  end

  def create

    @user = User.find_by({"email" => params["email"]})

    if @user != nil

      flash["notice"] = "Welcome!"
      redirect_to "/companies"
      
    else
      flash["notice"] = "Nope."
      redirect_to "/login"

    end

  end

  def destroy
    flash["notice"] = "Goodbye."
  end
end
  