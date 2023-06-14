class AddPlantToAliases < ActiveRecord::Migration[7.0]
  def change
    add_reference :aliases, :plant
  end
end
