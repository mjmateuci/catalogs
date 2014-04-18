class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def edit
        @product = Product.find(params[:id])
    end

    def create
        @product = Product.new(params[:product])
        @product.save
    end

    def new
        @product = Product.new()
    end

    def update
        @product  = Product.find(params[:id])
        @product.update_attributes(params[:product])
    end

    def destroy
        product = Product.find(params[:id])
        redirect_to product.destroy ? catalogs_path : product_path(product) 
    end
end