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
      obtention_date = params[:plant][:age_in_days]
      obtention_date = obtention_date.split("-")
      age_in_days = (Date.today - Date.new(obtention_date[0].to_i, obtention_date[1].to_i, obtention_date[2].to_i)).to_i
      @plant = Plant.new(plants_params)
      @plant.user = current_user
      @plant_information = PlantInformation.find_or_create_by(name: params["plant"]["plant_information"])
      @plant.plant_information = @plant_information
      @plant.age_in_days = age_in_days

      if @plant.save
        redirect_to plants_path
      else
        render :new
      end
    end

    private

    def plants_params
      params.require(:plant).permit(:user_id, :nickname, :photo, :age_in_days)
    end
  end
end
