json.extract! @adventure, :id, :title, :mission, :cost, :mode, :sum_amount, :donations_number, :donations
json.imageURL url_for(@adventure.image)
