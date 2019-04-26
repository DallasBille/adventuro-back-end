class User < ApplicationRecord
    has_secure_password
    has_many :adventures
    has_many :donations
    has_many :adventures, through: :donations

    validates :username, presence: true , uniqueness: true
    validates :email, presence: true

    def full_name
        "#{first_name}" " #{last_name}"
    end

    def user_adventures
        Adventure.all.select {|adventure| adventure.user_id == id}
    end
end
