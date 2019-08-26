class UserSerializer < ActiveModel::Serializer
    has_many :adventures
    has_many :donations
    attributes :id, :username, :email, :first_name, :last_name, :full_name, :user_donations, :donation_adventures
end
