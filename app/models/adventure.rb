class Adventure < ApplicationRecord
    belongs_to :user
    has_many :donations
    has_many :users, through: :donations



    def donation_amounts
        donations = Donation.all.select{|donation| donation.adventure_id == id}
    end

    def sum_amount
        amount = donations.map{|donation| donation.amount}
        amount.sum
    end

    # def percentage_funded
    #     sum_amount / adventure.cost * 100
    # end
end
