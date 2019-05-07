class RemoveImagesFromAdventures < ActiveRecord::Migration[5.2]
  def change
    remove_column :adventures, :image, :string
  end
end
