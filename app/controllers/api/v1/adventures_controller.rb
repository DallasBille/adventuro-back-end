class Api::V1::AdventuresController < ApplicationController

    def index
        @adventures = Adventure.all
        render json: @adventures
    end

end
