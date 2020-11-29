class ChatroomsController < ApplicationController

    def show
        @chatroom = Chatroom.find(params[:id])
        @message = Message.new chatroom: @chatroom
        @messages = @chatroom.messages.includes(:user)
    end

    def chatroom_params
        params.require(:chatroom).permit(:name)
    end

end
