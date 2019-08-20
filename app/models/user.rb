class User < ApplicationRecord
    has_secure_password

    has_many :itineraries 
    has_many :destinations, through: :itineraries 

    validates :username, presence: true, uniqueness: true 
    validates :first_name, :last_name, presence: true 

end
