class Contact < ActiveRecord::Base
  # Checks the fields are not empty
  validates :name, presence: true
  validates :email, presence: true
  validates :comments, presence: true

            
end