class SessionsController < ApplicationController
  def new
  end

  def create
    flash["notice"] = "Welcome!"
    redirect_to "/companies"
    end

  def destroy
    flash["notice"] = "Goodbye."
  end
end
  