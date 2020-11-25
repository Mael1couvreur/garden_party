class TasksController < ApplicationController
  def index
    @plants = Plant.where(user: current_user)
    @action = Action.new
  end
end


