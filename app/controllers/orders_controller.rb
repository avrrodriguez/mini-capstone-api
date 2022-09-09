class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    orders = current_user.orders
    render json: orders.as_json(methods: [:product])
  end

  def show
    order = Order.find_by(id: params["id"])
    if current_user.id == order.user_id
      render json: order.as_json(methods: [:product])
    else
      render json: { message: "You are not authorized to view this page." }, status: :unauthorized
    end
  end

  def create
    product = Product.find_by(id: params["product_id"])
    subtotal = product.price * params["quantity"].to_i
    tax = product.tax * params["quantity"].to_i

    order = Order.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: subtotal,
      tax: tax,
      total: subtotal + tax,
    )
    if order.save
      render json: order.as_json
    else
      render json: { errors: order.errors.full_messages }
    end
  end
end
