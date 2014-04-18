class Catalog < ActiveRecord::Base
    attr_accessible  :name, :description, :footer, :kind, :background

    has_many :products, dependent: :destroy

    validates_presence_of :name, :description, :kind
    validates_uniqueness_of :name
    validate :change_catalog, :on => :update

    def change_catalog
        errors.add(:kind, "no puede cambiar porque la cantidad de productos asignados a este catalogo son mayores que los permitidos por el tipo") unless products.count <= (kind == "Frente" ? 4 : 6)
    end
end