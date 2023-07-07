# frozen_string_literal: true

class UpdateAliasForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :aliases, :plants
    add_foreign_key :aliases, :plants, on_delete: :cascade
  end
end
