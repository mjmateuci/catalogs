class CatalogsController < ApplicationController
    def index
        @catalogs = Catalog.all
        @products = Product.all
    end

    def show
        @catalog = Catalog.find(params[:id])
        if @catalog.kind == "Frente"
            render :partial => 'catalog_frente', :layout => 'catalog_frente'
        else
            render :partial => 'catalog_atras', :layout => 'catalog_atras'
        end
    end

    def edit
        @catalog = Catalog.find(params[:id])
    end

    def create
        @catalog = Catalog.new(params[:catalog])
        @catalog.save
    end

    def new
        @catalog = Catalog.new()
    end

    def update
        @catalog  = Catalog.find(params[:id])
        @catalog.update_attributes(params[:catalog])
    end

    def destroy
        catalog = Catalog.find(params[:id])
        redirect_to catalog.destroy ? catalogs_path : catalog_path(catalog) 
    end
end