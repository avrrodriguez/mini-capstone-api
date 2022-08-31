class ProductsController < ApplicationController
  def all_products_method
    render json: Product.all.as_json
  end

  def one_product_method
    render json: Product.find_by(id: params["id"]).as_json
  end
end
