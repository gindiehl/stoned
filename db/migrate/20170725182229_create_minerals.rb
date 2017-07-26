class CreateMinerals < ActiveRecord::Migration[5.1]
  def change
    create_table :minerals do |t|
      t.string :name
      t.string :category
      t.string :image
      t.string :crystal_system
      t.text :color
      t.text :crystal_habit
      t.string :cleavage
      t.integer :hardness
      t.string :luster
      t.string :streak
      t.text :diaphaneity
      t.text :geo_location
      t.integer :rock_id

      t.timestamps
    end
  end
end
