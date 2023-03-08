class Gardens::BuildController < ApplicationController
  include Wicked::Wizard

  steps :add_category, :add_exposure, :add_plant_categories

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

    if params[:garden][:status] == 'active'
      redirect_to garden_path(@garden)
    else
      render_wizard @garden
    end
  end


  def create
    @garden = Garden.create!(width: 200, length: 80)
    redirect_to wizard_path(steps.first, garden_id: @garden.id)
  end

  private

  def garden_params
    params.require(:garden).permit(:category, :exposure, :width, :length, :status, plant_categories: [])
  end
end
