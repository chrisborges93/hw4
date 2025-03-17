class PlacesController < ApplicationController
  def index
    if session["user_id"]
      @places = Place.where(user_id: session["user_id"]) 
    else
      redirect_to "/login" 
    end
  end

  def show
    @place = Place.find_by(id: params["id"])
    @entries = Entry.where(place_id: @place["id"])
  end

  def new
    redirect_to "/login" if session["user_id"].nil? 
  end

  def create
    if session["user_id"]
      @place = Place.new
      @place["name"] = params["name"]
      @place["user_id"] = session["user_id"]
      @place.save
    end 
    
    redirect_to "/login"
  end
end

