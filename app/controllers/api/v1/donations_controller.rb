class Api::V1::DonationsController < ApplicationController

    def index
        @donations = Donation.all
        render json: @donations
    end

end
