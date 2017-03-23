class LocationController < ApplicationController

  layout false

  def index
    @locations = Location.sorted
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
end
