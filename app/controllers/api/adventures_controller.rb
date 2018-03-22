class Api::AdventuresController < ApplicationController
    before_action :set_adventure, only: [:show, :update, :destroy]

    def index
      render json: Adventure.all
    end

    def show
      render json: @adventure
    end

    def create
      adventure = Adventure.new(adventure_params)
      if adventure.save
        render json: adventure
      else
        render json: {message: adventure.errors}, status: 400
      end
    end

    def update
      if @adventure.update(adventure_params)
        render json: @adventure
      else
        render json: {message: adventure.errors}, status: 400
      end
    end

    def destroy
      if @adventure.destroy
        render status: 204
      else
        render json: {message: "Unable to remove this adventure"}, status: 400
      end
    end


    private

    def set_adventure
      @adventure = Adventure.find_by(id: params[:id])
    end

    def adventure_params
      params.require(:adventure).permit(:title, :location, :description, :date)
    end
end
