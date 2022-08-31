class ProductsController < ApplicationController
  def index
    # show all products
    render json: Product.all.as_json
  end

  def show
    # show one product
    render json: Product.find_by(id: params["id"]).as_json
  end
end
