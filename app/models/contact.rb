class Contact < ActiveRecord::Base
  # Contact Form Validations. Checks if all three fields are filled.
  validates :name, presence: true
  validates :email, presence: true
  validates :comments, presence: true
end