class ProductsController < ApplicationController
  def all_products_method
    render json: Product.all.as_json
  end
end
