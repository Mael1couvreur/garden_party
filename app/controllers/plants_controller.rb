class PlantsController < ApplicationController
  def show
    @plant = Plant.find(params[:id])
    raise
  end
end
