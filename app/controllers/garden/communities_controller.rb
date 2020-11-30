module Garden
  class CommunitiesController < ApplicationController
    def index
      @plants = Plant.where.not(user_id: current_user.id)
      @now = Time.now
    end

    def classement
      @order = User.order(score: :asc)
    end
  end
end
