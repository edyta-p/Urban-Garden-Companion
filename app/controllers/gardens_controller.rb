class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :send_email, :email, :list]

  def show
    @garden = Garden.find(params[:id])
    @plants = @garden.plants
  end

  def list
  end

  def email
    @url = garden_path(@garden, received: true)
  end

  def send_email
    SendPdfMailer.with(email: params[:email], garden: @garden).your_garden.deliver_later
    redirect_to email_garden_path(@garden), notice: "Mail successfully sent"
  end

  private


  def my_function
    @div.times do
      @after_exposure.sample(@nb_plants).each do |x|
        @var_not_enough << x
      end
    end
  end

  def set_garden

    @garden = Garden.find(params[:id])
  end
end
