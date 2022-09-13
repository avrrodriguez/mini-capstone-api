class CartedProductsController < ApplicationController
  def create
    if current_user
      cart = CartedProduct.new(
        user_id: current_user.id,
        product_id: params["product_id"],
        quantity: params["quantity"],
        status: "carted",
      )

      if cart.save
        render json: cart.as_json
      else
        render json: { errors: cart.errors.full_messages }, status: :bad_request
      end
    end
  end

  def index
    if current_user
      cart = User.find_by(id: current_user.id).carted_products.find_by(status: "carted")

      render json: cart.as_json
    end
  end
end
