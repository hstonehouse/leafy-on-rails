# frozen_string_literal: true

class PlantsController < ApplicationController
  def all
    @plants = Plant.all
    render json: @plants
  end

  def one
    plant = Plant.find(params[:id])
    render json: plant, serializer: PlantSerializer if plant
    rescue
      render json: { error: 'Plant not found' }, status: :not_found
  end

  def search
    result = Plant.joins(:aliases)
                  .where('aliases.name LIKE ?', "%#{params[:query].downcase}%")
                  .or(Plant.where('plants.title LIKE ?', "%#{params[:query].downcase}%"))
                  .uniq
    render json: result
  end
end
