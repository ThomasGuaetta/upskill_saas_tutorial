class ContactMailer < ApplicationMailer
  def contact_email
    @contact = params[:contact]

    mail(to: ENV['ADMIN_EMAIL'], subject: "Contact Form Message")
  end
end