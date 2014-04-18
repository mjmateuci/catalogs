class Catalog < ActiveRecord::Base
    attr_accessible  :name, :description, :footer, :kind, :background

    has_many :products, dependent: :destroy
end