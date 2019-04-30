class CollectionsController < ApplicationController
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

  def collection_params
    params.require(:collection).permit(:title, :category_id, :user_id)
  end
end
