class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
        t.string :name
        t.string :code
        t.float :initial_price
        t.float :promotional_price
        t.string :description
        t.string :foto
        t.integer :catalog_id

        t.timestamps
    end
  end
end