class LocationController < ApplicationController

  layout false

  def index
    @locations = Location.sorted
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new({name: 'Default'})
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to(action: 'index')
    else
      render('new')
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(location_params)
      redirect_to(action: 'show', id: @location.id)
    else
      render('edit')
    end
  end

  def delete
    @location = Location.find(params[:id])
  end

  def destroy
    location = Location.find(params[:id]).destroy
    redirect_to(action: 'index')
  end

  private
    def location_params
      params.require(:location).permit(:name, :position, :sub_location, :category, :wifi, :power, :coffee, :food)
    end

end
