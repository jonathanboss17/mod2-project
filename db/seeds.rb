# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command [or created alongside the database with db:setup].
#
# Examples:
#
#   movies = Movie.create[[{ name: 'Star Wars' }, { name: 'Lord of the Rings' }]]
#   Character.create[name: 'Luke', movie: movies.first]

CS.states(:us).each do |key, value|
    CS.cities(key, :us).each do |city|
        Destination.create(city: city, state: value)
    end
end
