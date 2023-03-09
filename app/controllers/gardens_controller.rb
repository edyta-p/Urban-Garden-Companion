class GardensController < ApplicationController
  before_action :set_gardens, only: [:show, :send_email]

  def show
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

  def set_gardens
    @garden = Garden.find(params[:id])
  end
end
