class Api::V1::AdventuresController < ApplicationController

    def index
        @adventures = Adventure.all
        render json: @adventures
    end

    def show
        @adventure = Adventure.find(params[:id])
        render json: @adventure
    end

    def create
        @adventure = Adventure.create(adventure_params)
        render json: @adventure
    end

    def update
        @adventure = Adventure.find(params[:id])
        if @adventure.update(adventure_params)
            render json: @adventure
        end
    end


    private

    def adventure_params
        params.require(:adventure).permit(:user_id,:mission, :description, :cost, :mode,:title)
    end
end
