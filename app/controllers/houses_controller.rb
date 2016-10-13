class HousesController < ApplicationController
  def index
    @houses = House.all
  end
  def show
    @house = House.find(params[:id])
  end
  def new
    @house = House.new
  end
  def create
    @house = @house.create(houses_params)
    redirect_to root_path
  end
  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to root_path
  end
  private
  def houses_params
    params.require(:house).permit(:name, :sigil, :model)
  end
end
