class Gardens::BuildController < ApplicationController
  include Wicked::Wizard

  steps :add_category, :add_geolocalisation, :add_exposure, :add_plant_categories
  after_action :add_plants, only: :update
  STEP_COUNTER = 4

  def show
    @garden = Garden.find(params[:garden_id])
    # redirect_to categories_garden_plants_path(@garden)
    render_wizard
  end

  def update
    @garden = Garden.find(params[:garden_id])
    params[:garden][:status] = step.to_s
    params[:garden][:status] = 'active' if step == steps.last
    @garden.update(garden_params)

    # @count_plant_in_cat = []
    # @garden.plant_categories.each do |cat|
    #   @count_plant_in_cat << Plant.where(category: cat)
    # end

    if params[:garden][:status] == 'active'
      redirect_to garden_path(@garden)
    else
      render_wizard @garden
    end
  end

  def create
    @garden = Garden.create!
    redirect_to wizard_path(steps.first, garden_id: @garden.id)
  end

  private

  def garden_params
    params.require(:garden).permit(:category, :exposure, :width, :length, :status, :climate, plant_categories: [])
  end

  def add_plants
    return unless garden_params[:plant_categories].present?

    max_plant = (@garden.width.fdiv(Plant::PLANT_SIZE).to_i * @garden.length.fdiv(Plant::PLANT_SIZE).to_i)
    plants = []
    max_plant.times do
      plant = Plant.where(category: @garden.plant_categories, climate: @garden.climate, exposure: @garden.exposure).sample
      p "-" * 50
      puts Plant.where(category: @garden.plant_categories, climate: @garden.climate, exposure: @garden.exposure).count
      p "-" * 50
      plants << PlantsGarden.create(plant:, garden: @garden)
    end
    # Plant.import plants

    # if @count_plant_in_cat.count < max_plant
    #   @div = @count_plant_in_cat.count.fdiv(max_plant).to_i
    #   @modulo = @count_plant_in_cat.count % max_plant
    #   @div.times do

    #   end
    #   Plant.where(category: @garden.plant_categories, climate: @garden.climate, exposure: @garden.exposure).sample(@modulo).each do |plant|
    #     PlantsGarden.create!(plant: plant, garden: @garden)
    #   end
    # else
    #   Plant.where(category: @garden.plant_categories, climate: @garden.climate, exposure: @garden.exposure).sample(max_plant).each do |plant|
    #     PlantsGarden.create!(plant: plant, garden: @garden)
    #   end
    # end

  end
end
