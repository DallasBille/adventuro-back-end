json.array! @adventures do |adventure|
    json.extract! adventure, :id, :title, :mission, :cost, :mode, :sum_amount, :donations_number, :donations, :user_id
    json.imageURL url_for(adventure.image) if adventure.image.attached?
end
