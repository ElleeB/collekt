class UsersController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(
      :name, :username, :email, :bio, :password, :password_confirmation
    )
  end
end
