class PlantsController < ApplicationController
  def show
    @plant = Plant.find(params[:id])
    @samePlant = Plant.where(plant_information_id: @plant.plant_information_id)
  end

  def index

    @user_plants = Plant.where(user_id:current_user.id)
    # @creation_date = @user_plant[].created_at.strftime("%d %b. %Y")
    @now = Time.now

  end

  private

  def plants_params
    params.require(:plant).permit(:user_id, :plant_information_id, :like_number)
  end
end
