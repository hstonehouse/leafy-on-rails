# frozen_string_literal: true

class PlantController < ApplicationController
  def all
    @plants = Plant.all
    render json: @plants
  end
end
