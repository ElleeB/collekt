module Api
  class CollectionsController < ApplicationController
    def index
      @collections = Collection.all
      render json: @collections
    end

    private

    def collection_params
      params.require(:collection).permit(:title, :category_id, :user_id)
    end
  end
end
