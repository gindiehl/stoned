class CreateRocks < ActiveRecord::Migration[5.1]
  def change
    create_table :rocks do |t|
      t.string :name

      t.timestamps
    end
  end
end
