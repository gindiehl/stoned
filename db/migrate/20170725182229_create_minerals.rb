class CreateMinerals < ActiveRecord::Migration[5.1]
  def change
    create_table :minerals do |t|
      t.string :name
      t.string :category
      t.string :image
      t.string :crystal_system
      t.text :color, array: true, default: []
      t.text :crystal_habit, array: true, default: []
      t.string :cleavage
      t.integer :hardness
      t.string :luster
      t.string :streak
      t.text :diaphaneity, array: true, default: []
      t.text :geo_location, array: true, default: []
      t.integer :rock_id

      t.timestamps
    end
  end
end
