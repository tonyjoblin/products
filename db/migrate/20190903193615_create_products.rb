class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :description
      t.string :item_number
      t.money :price

      t.timestamps
    end
  end
end
