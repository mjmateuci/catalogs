class CatalogsController < ApplicationController
    def index
        @catalogs = Catalog.all
        @products = Product.all
    end

    def show
        @catalog = Catalog.find(params[:id])
        render layout: "catalog_frente"
    end

    def edit
        @catalog = Catalog.find(params[:id])
    end

    def create
        @catalog = Catalog.new(params[:catalog])
        redirect_to @catalog.save ? catalog_path(@catalog) : catalogs_path 
    end

    def new
        @catalog = Catalog.new()
    end

    def update
        @catalog  = Catalog.find(params[:id])
        redirect_to  @catalog.update_attributes(params[:catalog]) ? catalog_path(@catalog) : catalogs_path 
    end

    def destroy
        catalog = Catalog.find(params[:id])
        redirect_to catalog.destroy ? catalogs_path : catalog_path(catalog) 
    end
end