class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.create
  end

  private

  def task_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

end
