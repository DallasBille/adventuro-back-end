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
        @adventure = Adventure.new(adventure_params)
        if @adventure.save
        render json: @adventure
        else
        render json: @adventure.errors.full_messages
        end
    end

    def update
        @adventure = Adventure.find(params[:id])
        if @adventure.update(adventure_params)
            render json: @adventure
        end
    end


    private

    def adventure_params
        params.require(:adventure).permit(:user_id,:mission, :description, :cost, :mode, :title, :image)
    end
end

# json.array! @adventures do |adventure|
#     json.extract! adventure, :id, :title, :mission, :cost, :mode, :sum_amount, :donations_number, :donations, :user_id
#     json.imageURL url_for(adventure.image) if adventure.image.attached?
# end