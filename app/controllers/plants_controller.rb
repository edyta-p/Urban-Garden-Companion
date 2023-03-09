class PlantsController < ApplicationController
  def new
    @plant = Plant.new
  end

  # def categories
  #   @garden = Garden.find(params[:garden_id])
  #   redirect_to garden_path(@garden)
  # end

  # def choice
  #   @all_possibilities = []
  #   @garden = Garden.find(params[:garden_id])
  #   @nb_plants = (@garden.width * @garden.length) / 1000

  #   @garden.plant_categories.each do |cat|
  #     @all_possibilities << Plant.where(category: cat)
  #   end

  #   # @all_possibilities.each do |pos|
  #   #   pos.each do |f|
  #   #     f.category
  #   #   end
  #   # end
  # end
end
