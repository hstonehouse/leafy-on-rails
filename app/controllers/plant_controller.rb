# frozen_string_literal: true

class PlantController < ApplicationController
  def all
    @plants = Plant.all
    render json: @plants
  end

  def search
    result = Alias.where('name LIKE ?', "%#{params[:query]}%")
    render json: result
  end
end
