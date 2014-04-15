class Product < ActiveRecord::Base
    attr_accessible :name, :code, :initial_price, :promotional_price, :description, :foto, :catalog_id

    belongs_to :catalog
end