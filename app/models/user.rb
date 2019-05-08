class User < ApplicationRecord
    has_secure_password
    has_many :adventures
    has_many :donations
    has_many :adventures, through: :donations

    validates :username, presence: true , uniqueness: true
    validates :email, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    # validates :password_digest, presence: true , uniqueness: true

    def full_name
        "#{first_name}" " #{last_name}"
    end

    def user_adventures
        Adventure.all.select {|adventure| adventure.user_id == id}
    end

    def user_donations
        donations = Donation.all.select{|donation| donation.user_id == id}
        donations.map{|donation| {amount: donation.amount, adventure: donation.adventure.title, id: donation.adventure.id}}
        end

    def donation_adventures
        donations = Donation.all.select{|donation| donation.user_id == id}
        donations.map{|donation| donation.adventure}
    end

    # def adventure_title
    #     donation_adventures.each{|adventure_title| adventure_title.title}
    # end
end
