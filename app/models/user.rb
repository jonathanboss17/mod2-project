class User < ApplicationRecord
    has_secure_password

    has_many :itineraries, dependent: :destroy
    has_many :destinations, through: :itineraries 

    validates :username, presence: true, uniqueness: true 
    validates :first_name, :last_name, presence: true
    
    def name 
        self.first_name + " " + self.last_name
    end

end
