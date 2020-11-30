module Garden
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

    def new
      @plant = Plant.new
    end

    def create
      @plant = Plant.new(plants_params)
      @plant.user = current_user
      @plant.plant_information = PlantInformation.find(params[:plant]["plant_information"])
      if @plant.save
        redirect_to plants_path
      else
        render :new
      end
    end

    def upvote
      @plant = Plant.find(params[:id])
      @plant.like_number += 1
      @plant.save!
      @plant.user.score += 1
      @plant.user.save!
      # redirect_to communities_path
    end

    private

    def plants_params
      params.require(:plant).permit(:user_id, :like_number, :nickname, :photo)
    end
  end
end
