module Garden
  class CommunitiesController < ApplicationController
    def index
      @plants = Plant.where.not(user_id: current_user.id)
      @now = Time.now
    end

    def classement
      @order = User.order(score: :desc)
<<<<<<< HEAD
=======
      @user = current_user
>>>>>>> 83cf17d440dce0be5194890c65769ef8080ccedb
    end
  end
end
