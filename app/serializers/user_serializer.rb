class UserSerializer < ActiveModel::Serializer
    # has_many :adventures
    # has_many :donations
    attributes :id, :username, :email, :first_name, :last_name, :full_name, :donation_adventures, :user_donations 
end
