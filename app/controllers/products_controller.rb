class ProductsController < ApplicationController
  def index
    # show all products
    render json: Product.all.as_json
  end

  def show
    # show one product
    product = Product.find_by(id: params["id"])
    render json: product.as_json(methods: [:is_discounted?, :tax, :total])
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
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description

    product.save

    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy

    render json: { "message": "Target neutralized" }
  end
end
