class Adventure < ApplicationRecord
    has_one_attached :image
    belongs_to :user
    has_many :donations
    has_many :users, through: :donations


    def donation_amounts
        adventure_donations = Donation.all.select{|donation| donation.adventure_id == id}
    end

    def sum_amount
        amount = donations.map{|donation| donation.amount}
        amount.sum
    end

    def donations_number
        donations.length
    end


end
