class Api::V1::DonationsController < ApplicationController

    def index
        @donations = Donation.all
        render json: @donations
    end

    def create
        @donation = Donation.create(donation_params)
        render json: @donation.curr_adventure
    end


    private

    def donation_params
        params.permit(:user_id, :adventure_id, :amount)
    end
end
