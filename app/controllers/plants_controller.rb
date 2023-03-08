class PlantsController < ApplicationController
  def new
    @plant = Plant.new
  end

  def categories
    @garden = Garden.find(params[:garden_id])
    redirect_to garden_path(@garden)
  end

end
