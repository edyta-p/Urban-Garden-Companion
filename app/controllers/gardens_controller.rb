class GardensController < ApplicationController
  before_action :set_gardens, only: [:show]

  def show
  end

  private

  def set_gardens
    @garden = Garden.find(params[:id])
  end

end
