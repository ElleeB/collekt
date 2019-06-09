module Api
  class UsersController < ApplicationController
    def index
    end

    def show
      @user = User.find(1)
      render json: @user
    end

    private

    def user_params
      params.require(:user).permit(
        :username, :email, :bio, :password, :password_confirmation
      )
    end
  end
end
