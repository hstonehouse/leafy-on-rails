# frozen_string_literal: true

class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.text :title
      t.text :image
      t.text :water
      t.text :light
      t.text :pet_safe

      t.timestamps
    end
  end
end
