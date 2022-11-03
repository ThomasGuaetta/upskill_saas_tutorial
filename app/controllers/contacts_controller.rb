class ContactsController < ApplicationController
  
  #  GET Request to /contact-us
  #  Show new contact form (/saasapp/app/views/contacts/new.html.erb)
  def new
    @contact = Contact.new
  end
  
  
  # Post Request /contacts
  def create 
    # Mass assignment of form fields into Contact object
    @contact = Contact.new(contact_params)
    # Save the Contact object to the database
    if @contact.save
      # Store form fields via parameters, into variables
      name = params[:contact][:name]
      email = params[:contact][:email]
      body = params[:contact][:comments]
      # Plug variables into the Contact_Mailer.rb email method and send email
      ContactMailer.contact_email(name, email, body).deliver
      # Store success message in flash hash
      flash[:success] = "Message Sent."
      # Redirect to new action
      redirect_to new_contact_path
    else
      # If Contact object doesn't save, store errors in flash hash and redirect to new action
      flash[:danger] = @contact.errors.full_messages.join(", ")
      redirect_to new_contact_path
    end
  end
  
  private
  # To collect data from form, we need to use strong parameters and whitelist the form fields
    def contact_params
      params.require(:contact).permit(:name, :email, :comments)
    end
    
end