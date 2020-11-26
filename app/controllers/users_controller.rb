class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])    
    end

    private

    def users_params
        params.require(:user).permit(:first_name, :address, :email, :password, :photo)
      end

end
