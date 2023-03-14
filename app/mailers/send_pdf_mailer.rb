class SendPdfMailer < ApplicationMailer
  def your_garden
    @email = params[:email]
    @garden = params[:garden]
   mail(from: "benjbdk@gmail.com", to: @email, subject: 'Urban ')
    # This will render a view in `app/views/user_mailer`!
  end
end
