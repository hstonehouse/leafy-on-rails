# frozen_string_literal: true

class CreateFavourites < ActiveRecord::Migration[7.0]
  def change
    create_table :favourites do |t|
      t.belongs_to :plants
      t.belongs_to :users

      t.timestamps
    end
  end
end
