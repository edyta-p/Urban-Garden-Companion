class SendPdfMailer < ApplicationMailer
  def your_pdf
    @email = params[:email]
    @pdf_name = params[:pdf_name]
    attachments.inline[@pdf_name] = File.read(@pdf_name)
    mail(from: "benjbdk@gmail.com", to: @email, subject: 'Urban ')
    # This will render a view in `app/views/user_mailer`!
  end
end
