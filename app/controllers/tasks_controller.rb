class TasksController < ApplicationController
  def index
    @plants = Plant.where(user: current_user)
    @activity = Activity.new
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end
end
