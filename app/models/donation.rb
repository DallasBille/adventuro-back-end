class Donation < ApplicationRecord
    belongs_to :adventure
    belongs_to :user

    def curr_adventure
        {
            donation: {id: self.id, amount: self.amount, adventure: self.adventure.title, adventure_id: self.adventure.id},
            adventure: {
                id: self.adventure.id,
                cost: self.adventure.cost,
                donations: self.adventure.donations,
                donations_number: self.adventure.donations_number,
                sum_amount: self.adventure.sum_amount,
                mission: self.adventure.mission,
                mode: self.adventure.mode,
                title: self.adventure.title
            }
        }
    end
end
