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
        redirect_to @product.save ? product_path(@product) : catalogs_path
    end

    def new
        @product = Product.new()
    end

    def update
        @product  = Product.find(params[:id])
        redirect_to @product.update_attributes(params[:product]) ? product_path(@product) : catalogs_path
    end

    def destroy
        product = Product.find(params[:id])
        redirect_to product.destroy ? catalogs_path : product_path(product) 
    end
end