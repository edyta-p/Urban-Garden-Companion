class SendPdfMailer < ApplicationMailer
  def your_garden
    @email = params[:email]
    @garden = params[:garden]
    mail(from: "urbangardencompanion1102@hotmail.com", to: @email, subject: 'Urban Garden Companion')
    # This will render a view in `app/views/user_mailer`!
    # benjbdk@gmail.com
  end
end
