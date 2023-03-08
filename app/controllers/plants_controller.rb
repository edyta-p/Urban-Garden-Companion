class PlantsController < ApplicationController
  def new
    @plant = Plant.new
  end

  def categories
    Plant::CATEGORY
  end

end
