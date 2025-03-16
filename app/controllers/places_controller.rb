class PlacesController < ApplicationController
  def index
    if session["user_id"]
      @places = Place.where(user_id: session["user_id"])  
    else
      redirect_to "/places"  
    end
  end

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
    @entries = Entry.where({ "place_id" => @place["id"] })
  end

  def new
    redirect_to "/" if session["user_id"].nil?  # ✅ Prevent logged-out users from accessing "New Place" page
  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end

end
