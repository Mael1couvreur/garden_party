module Garden
  class PlantsController < ApplicationController
    def show
      @plant = Plant.find(params[:id])
      @samePlant = Plant.where(plant_information_id: @plant.plant_information_id)
    end

    def index
      @user_plants = Plant.where(user_id: current_user.id)
      # @creation_date = @user_plant[].created_at.strftime("%d %b. %Y")
      @now = Time.now
    end

    def new
      @plant = Plant.new
      @plant_infos = []
      PlantInformation.all.select(:name).each do |_plantinfo|
        @plant_infos << _plantinfo.name
      end
    end

    def create
      @plant = Plant.new(plants_params)
      @plant.user = current_user
      @plant_information = PlantInformation.find_or_create_by(name: params["plant"]["plant_information"])
      @plant.plant_information = @plant_information
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

    def dislike
      @plant = Plant.find(params[:id])
      @plant.like_number -= 1
      @plant.save!
      @plant.user.score -= 1
      @plant.user.save!
    end

    private

    def plants_params
      params.require(:plant).permit(:user_id, :like_number, :nickname, :photo)
    end
  end
end
