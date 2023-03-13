class GardensController < ApplicationController
  before_action :set_gardens, only: [:show, :send_email, :email, :list]

  def show
    @all_possibilities = []
    @garden = Garden.find(params[:id])
    # adding all the plants from the given category
    @garden.plant_categories.each do |cat|
      @all_possibilities << Plant.where(category: cat)
    end
    # filtering the plants based on the climate
    @after_geo = []
    @all_possibilities.each do |f|
      f.where(climate: 'Temperate').each do |plant|
        @after_geo << plant
      end
    end
    # filtering the plants based on the exposure
    @after_exposure = []
    @after_geo.select do |elem|
      elem.exposure == @garden.exposure ? @after_exposure << elem : @after_exposure
    end
    # defining size of the plant
    @plant_size = 40 # length and width (in cm)
    # calaculating the number of the plants
    @nb_plants = @garden.width.fdiv(@plant_size).to_i * @garden.length.fdiv(@plant_size).to_i
    # defining variable if @nb_plants =< @after_exposure
    @var = @after_exposure.sample(@nb_plants)
    # further calculations if @nb_plants > @after_exposure
    @div = @nb_plants.fdiv(@after_exposure.count).to_i
    @modulo = @nb_plants % @after_exposure.count
    @var_not_enough = []

    if @modulo.zero?
      my_function
    else
      my_function
      @after_exposure.sample(@modulo).each do |y|
        @var_not_enough << y
      end
    end

    @plants = []
    @var_not_enough.uniq.each do |q|
      @plants << q
    end
    @all_instances = []
    @var_not_enough.each do |u|
      @all_instances << u
    end
  end

  def list
  end

  def email
  end

  def send_email
    Prawn::Document.generate("hello.pdf") do
      text "Hello World!"
    end
    pdf_name = "hello.pdf"

    SendPdfMailer.with(email: params[:email], pdf_name:).your_pdf.deliver_later
  end

  private

  def my_function
    @div.times do
      @after_exposure.sample(@nb_plants).each do |x|
        @var_not_enough << x
      end
    end
  end

  def set_gardens
    @garden = Garden.find(params[:id])
  end
end
