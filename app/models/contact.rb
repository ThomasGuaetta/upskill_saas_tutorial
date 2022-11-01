class Contact < ActiveRecord::Base
  # Checks the fields are not empty
  validates :name, presence: true
  validates :email, presence: true
  validates :comments, presence: true
  
  # Checks that the email field is a valid email
  # validates :email,
  # format: { with: /^(.+)@(.+)$/, message: "Email invalid"  },
  #           uniqueness: { case_sensitive: false },
  #           length: { minimum: 4, maximum: 254 }
            
end