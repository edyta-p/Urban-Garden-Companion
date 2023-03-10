class GardensController < ApplicationController
  before_action :set_gardens, only: [:show, :email, :list]

  def show
    @all_possibilities = []
    @garden = Garden.find(params[:id])

    @garden.plant_categories.each do |cat|
      @all_possibilities << Plant.where(category: cat)
    end
    @after_geo = []
    @all_possibilities.each do |f|
      f.where(climate: 'Temperate').each do |plant|
        @after_geo << plant
      end
    end
    @after_exposure = []
    @after_geo.select do |elem|
      elem.exposure == @garden.exposure ? @after_exposure << elem : @after_exposure
    end
    @plant_size = 1600 #cm^2
    @nb_plants = ((@garden.width * @garden.length) / @plant_size).to_i
    @var = @after_exposure.sample(@nb_plants)

  end

  def list

  end

  private

  def set_gardens
    @garden = Garden.find(params[:id])
  end
end
