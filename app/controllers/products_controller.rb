class ProductsController < ApplicationController
  def index
    # show all products
    render json: Product.all.as_json
  end

  def show
    # show one product
    render json: Product.find_by(id: params["id"]).as_json
  end

  def create
    product = Product.create(
      name: params["name"],
      price: params["price"].to_i,
      image_url: params["image_url"],
      description: params["description"],
    )
    render json: product.as_json
  end

  def update
    product = Product.find_by(id: params["id"])

    product.name = params["name"] || product.name
    product.price = params["price"].to_i || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description

    render json: product.as_json
  end
end
