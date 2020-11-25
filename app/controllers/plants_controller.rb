class PlantsController < ApplicationController
  def show
    @plant = Plant.find(params[:id])
    @samePlant = Plant.where(plant_information_id: @plant.plant_information_id)
  end

  def index
    # @plants = Plant.all
    @user_plants = Plant.where(user_id:current_user.id)
  end

  private

  def plants_params
    params.require(:plant).permit(:user_id, :plant_information_id, :like_number)
  end
end
