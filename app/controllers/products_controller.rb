class ProductsController < ApplicationController
  def index
    # show all products
    @products = Product.all
    render template: "products/index"
  end

  def show
    # show one product
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def create
    @product = Product.create(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    render template: "products/show"
  end

  def update
    @product = Product.find_by(id: params["id"])

    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.image_url = params["image_url"] || @product.image_url
    @product.description = params["description"] || @product.description

    @product.save

    render template: "products/show"
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy

    render json: { "message": "product yeeted succesfully" }
  end
end
