json.extract! @adventure, :id, :title, :mission, :cost, :mode, :sum_amount, :donations_number, :donations, :user
json.imageURL url_for(@adventure.image) if @adventure.image.attached?
