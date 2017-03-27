class VisitController < ApplicationController

  def index
    @visits = Visit.all
  end

  def show
    @visit = Visit.find(params[:id])
  end

  def new
    @visit = Visit.new({date: ''})
  end

  def create
    @visit = Visit.new(location_params)
    if @visit.save
      redirect_to(action: 'index')
    else
      render('new')
    end
  end

  def edit
    @visit = Visit.find(params[:id])
  end

  def update
    @visit = Visit.find(params[:id])
    if @visit.update_attributes(visit_params)
      redirect_to(action: 'show', id: @visit.id)
    else
      render('edit')
    end
  end

  def delete
    @visit = Visit.find(params[:id])
  end

  def destroy
    visit = Visit.find(params[:id]).destroy
    redirect_to(action: 'index')
  end

  private
    def visit_params
      params.require(:visit).permit(:date, :comments, :work, :community)
    end
end
