class UserSerializer < ActiveModel::Serializer
    # has_many :adventures, through: :donations
    attributes :id, :username, :email, :first_name, :last_name, :full_name, :user_adventures, :donation_adventures, :user_donations

end
