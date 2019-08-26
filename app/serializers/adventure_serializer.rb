class AdventureSerializer < ActiveModel::Serializer
    belongs_to :user
    has_many :donations
    attributes :id, :mission, :mode, :cost, :title,:sum_amount , :donations_number, :image_url


end
