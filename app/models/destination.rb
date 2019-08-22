class Destination < ApplicationRecord
    has_many :itineraries 
    has_many :users, through: :itineraries

    def location
        self.city + ", " + self.state
    end
end
