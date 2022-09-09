class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    # show all products
    pp current_user
    @products = Product.all
    render template: "products/index"
  end

  def show
    # show one product
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      supplier_id: params["supplier_id"],
    )

    if @product.save
      render template: "products/show"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params["id"])

    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.description = params["description"] || @product.description
    @product.supplier_id = params["supplier_id"] || @product.supplier_id

    if @product.save
      render template: "products/show"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy

    render json: { "message": "product yeeted succesfully" }
  end
end
