class AddForeignKeyToAliases < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :aliases, :plants
  end
end
