class ActivitiesController < ApplicationController
  def create
    activity = Activity.new(activity_params)
    plant = Plant.find(params[:activity]["plant_id"])
    task = Task.find(params[:activity]["task_id"])
    activity.done = true
    activity.plant = plant
    activity.task = task
    activity.save!

    # redirect_to tasks_path
  end

  private

  def activity_params
    params.require(:activity).permit(:plant_id, :task_id)
  end
end
