class Donation < ApplicationRecord
    belongs_to :adventure
    belongs_to :user
end