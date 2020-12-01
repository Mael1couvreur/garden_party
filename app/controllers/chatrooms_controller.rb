class ChatroomsController < ApplicationController

    def index 
        messages = Message.where(user_id: current_user)
        chats = []
        messages.each do |message|
           chats << message.chatroom 
        end
        @chatrooms = chats.uniq
    end
    
    def show
        @chatroom = Chatroom.find(params[:id])
        @message = Message.new chatroom: @chatroom
        @messages = @chatroom.messages.includes(:user)
    end

    def chatroom_params
        params.require(:chatroom).permit(:name)
    end

end
