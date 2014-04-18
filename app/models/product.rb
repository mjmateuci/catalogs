class Product < ActiveRecord::Base
    attr_accessible :name, :code, :initial_price, :promotional_price, :description, :foto, :catalog_id

    belongs_to :catalog

    validates_presence_of :name, :code, :initial_price, :promotional_price, :description, :foto, :catalog_id
    validates_numericality_of :promotional_price, :initial_price

    validate :valid_catalog

    def valid_catalog
        if catalog
            if catalog.products.where('id=?', id).empty?
                errors.add(:catalog_id, "ya esta lleno de productos") unless catalog.products.count < (catalog.kind == "Frente" ? 4 : 6)
            else
                errors.add(:catalog_id, "ya esta lleno de productos") unless catalog.products.count <= (catalog.kind == "Frente" ? 4 : 6)
            end
        end
    end 
end