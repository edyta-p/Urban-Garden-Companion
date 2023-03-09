class GardensController < ApplicationController
  before_action :set_gardens, only: [:show]

  def show
    @all_possibilities = []
    @garden = Garden.find(params[:id])

    @garden.plant_categories.each do |cat|
      @all_possibilities << Plant.where(category: cat)
    end

    @after_geo = []
    @after_exposure = []

    @nb_plants = ((@garden.width * @garden.length) / 1000).to_i

  end

  private

  def set_gardens
    @garden = Garden.find(params[:id])
  end
end
