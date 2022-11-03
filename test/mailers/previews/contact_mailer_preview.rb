# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview
  def contact_email
    # Set up a temporary contact for the preview
    contact = Contact.new(name: "Joe Smith", email: "joe@gmail.com", body: "Test Body")

    ContactMailer.with(contact: contact).new_order_email
  end
end