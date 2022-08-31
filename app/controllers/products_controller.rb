class ProductsController < ApplicationController
  def all_products_method
    render json: Product.all.as_json
  end

  def one_product_method
    render json: Product.find_by(id: 1).as_json
  end

  def second_product_method
    render json: Product.find_by(id: 2).as_json
  end

  def third_product_method
    render json: Product.find_by(id: 3).as_json
  end
end
