class CreateItineraries < ActiveRecord::Migration[5.1]
  def change
    create_table :itineraries do |t|
      t.string :title
      t.text :one_day
      t.text :two_day
      t.text :three_day
      t.belongs_to :user 
      t.belongs_to :destination

      t.timestamps
    end
  end
end
