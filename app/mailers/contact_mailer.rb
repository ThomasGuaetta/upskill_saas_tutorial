class ContactMailer < ActionMailer::Base
  default to: 'ThomasGuaetta@gmail.com'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Contact Form Message')
  end
  
  # def contact_email(name, email, body)
  # 	RestClient.post "https://api:549ae7f0b2e242a05818707c198655c1-31eedc68-45473f24"\
  # 	"@api.mailgun.net/v3/sandbox323d8aaa95df464281aaace298283af2.mailgun.org/messages",
  # 	:from => email
  # 	:to => "ThomasGuaetta@gmail.com",
  # 	:subject => "Contact Form Message",
  # 	:text => body
  # end
end