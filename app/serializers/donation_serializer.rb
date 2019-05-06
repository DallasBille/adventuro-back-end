class DonationSerializer < ActiveModel::Serializer
    attributes :id, :adventure_id, :amount
    belongs_to :adventure

end
