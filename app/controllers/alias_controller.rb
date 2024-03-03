# frozen_string_literal: true

class AliasController < ApplicationController
  def plant_aliases
    @aliases = Alias.where(plant_id: params[:id])
    render json: @aliases
  end
end