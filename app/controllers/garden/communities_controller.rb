module Garden
  class CommunitiesController < ApplicationController
    def index
      @plants = Plant.where.not(user_id: current_user.id)
      @now = Time.now
      @chatroom = Chatroom.new

      # my_chatrooms = Message.all.where(user_id: current_user.id).select(:chatroom_id).distinct
      # my_chatrooms.each do

      # end
      # raise
    end

    def classement
      @order = User.order(score: :desc)
      @podium = @order[0..2]
      @user = current_user
    end
  end
end
