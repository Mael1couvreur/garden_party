class ActivitiesController < ApplicationController
  def create
    activity = Activity.new(activity_params)
    plant = Plant.find(params[:activity]["plant_id"])
    task = Task.find(params[:activity]["task_id"])
    activity.done = true
    activity.plant = plant
    activity.task = task
    activity.save!

    user_score_update(activity)

    # redirect_to tasks_path
  end

  private

  def activity_params
    params.require(:activity).permit(:plant_id, :task_id)
  end

  def user_score_update(_activity)
    task_score = Task.find(_activity.task_id).score
    plant = Plant.find(_activity.plant_id)
    user = User.find(plant.user_id)
    user.score += task_score
  end
end
