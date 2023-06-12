class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :title
      t.string :image
      t.string :water
      t.string :light
      t.string :pet_safe

      t.timestamps
    end
  end
end
