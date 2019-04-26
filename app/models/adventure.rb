class Adventure < ApplicationRecord
    belongs_to :user
    has_many :dontations
    has_many :users, through: :donations

end
