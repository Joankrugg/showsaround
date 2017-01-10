class PlacesController < ApplicationController

  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.save
    redirect_to place_path(@place)
  end

  def show
  end

  def edit
  end

  def update
    @place.update(place_params)
    redirect_to place_path(@place)
  end

  def destroy
    @place.destroy
    redirect_to places_path
  end

  private


  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:place_name, :city, :place_address, :genre_id, :capacity, :type, :place_facebook, :place_description, :picture, :payment,)
  end
end
