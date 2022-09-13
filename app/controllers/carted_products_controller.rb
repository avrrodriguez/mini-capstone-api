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
      cart = current_user.carted_products.where(status: "carted")

      render json: cart.as_json
    end
  end
end
