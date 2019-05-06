class Donation < ApplicationRecord
    belongs_to :adventure
    belongs_to :user

    def curr_adventure
        {
            donation: {id: self.id},
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
