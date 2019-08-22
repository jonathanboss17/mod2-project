class Destination < ApplicationRecord
    has_many :itineraries 
    has_many :users, through: :itineraries

    def location
        self.city + ", " + self.state
    end

    def self.cities_for_state(state)
        self.where(state: state)
    end

    def self.states
        self.select(:state).distinct
    end

end
