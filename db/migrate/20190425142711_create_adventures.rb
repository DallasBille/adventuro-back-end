class CreateAdventures < ActiveRecord::Migration[5.2]
  def change
    create_table :adventures do |t|
      t.string :title
      t.string :mission
      t.integer :cost
      t.string :mode

      t.timestamps
    end
  end
end
