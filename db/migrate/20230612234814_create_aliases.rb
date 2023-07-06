# frozen_string_literal: true

class CreateAliases < ActiveRecord::Migration[7.0]
  def change
    create_table :aliases do |t|
      t.text :name

      t.timestamps
    end
  end
end
