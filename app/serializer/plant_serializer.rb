# frozen_string_literal: true

# This joins the info on the plant table with the alias table
# because we also want to show alias names when we view a plant
class PlantSerializer < ActiveModel::Serializer
  attributes :id, :title, :light, :water, :pet_safe, :image, :alias_names

  def alias_names
    object.aliases.map(&:name)
  end
end
