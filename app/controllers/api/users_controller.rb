module Api
  class UsersController < ApplicationController
    def index
    end

    private

    def user_params
      params.require(:user).permit(
        :username, :email, :bio, :password, :password_confirmation
      )
    end
  end
end
