class ActionsController < ApplicationController
  def create
    action = Action.new(action_params)
    action.save!
    redirect_to task_actions_path(@task)
  end

  private

  def action_params
    params.require(:action).permit(:plant, :task)
  end
end
