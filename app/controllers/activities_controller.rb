class ActivitiesController < ApplicationController
  def create
    activity = Activity.new(activity_params)
  end

  private

  def activity_params
    params.require(:activity).permit(:plant, :task)
  end
end
