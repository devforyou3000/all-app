class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def import
    begin
      Product.import(params[:file])
      redirect_to products_index_url, notice: "Products imported."
    rescue
      redirect_to products_index_url, notice: "Invalid CSV file format."
    end
  end
end
