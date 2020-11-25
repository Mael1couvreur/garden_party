class ActionsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @task = Task.find(params[:task_id])
    action = Action.new(action_params)
    action.save!
    redirect_to user_task_actions_path(@user, @task)
  end

  private

  def action_params
    params.require(:action).permit(:plant, :task)
  end
end
