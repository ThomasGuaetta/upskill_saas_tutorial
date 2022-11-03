class ContactMailer < ActionMailer::Base
  default to: 'ThomasGuaetta@gmail.com'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Contact Form Message')
  end
  
  def send_simple_message
  	RestClient.post "https://api:YOUR_API_KEY"\
  	"@api.mailgun.net/v3/YOUR_DOMAIN_NAME/messages",
  	:from => "Excited User <mailgun@YOUR_DOMAIN_NAME>"
  	:to => "bar@example.com, YOU@YOUR_DOMAIN_NAME",
  	:subject => "Hello",
  	:text => "Testing some Mailgun awesomness!"
  end
end