class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
        t.string :name
        t.string :description
        t.string :footer
        t.string :kind

        t.timestamps
    end
  end
end