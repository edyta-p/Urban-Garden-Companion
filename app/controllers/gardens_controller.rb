class GardensController < ApplicationController
  before_action :set_gardens, only: [:show, :send_email, :email, :list]

  def show
    @garden = Garden.find(params[:id])
    @plants = @garden.plants
  end

  def list
  end

  def email
  end

  def send_email
    Prawn::Document.generate("UrbanGarden.pdf") do
      text "Hello World!"
    end
    pdf_name = "UrbanGarden.pdf"

    SendPdfMailer.with(email: params[:email], pdf_name:).your_pdf.deliver_later
  end

  private

  def set_gardens
    @garden = Garden.find(params[:id])
  end
end
