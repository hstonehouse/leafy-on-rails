# frozen_string_literal: true

class PlantController < ApplicationController
  def all
    @plants = Plant.all
    render json: @plants
  end

  def one
    plant = Plant.find(params[:id])
    render json: plant, serializer: PlantSerializer
  end

  def search
    result = Plant.joins(:aliases).where('name LIKE ?', "%#{params[:query]}%").uniq
    render json: result
  end
end
