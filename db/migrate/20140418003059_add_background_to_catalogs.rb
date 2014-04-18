class AddBackgroundToCatalogs < ActiveRecord::Migration
  def change
        add_column :catalogs, :background, :string
  end
end
