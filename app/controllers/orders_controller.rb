class OrdersController < ApplicationController
  def show
    order = Order.find_by(id: 1)
    render json: order.as_json
  end

  def create
    order = Order.new(
      user_id: 1,
      product_id: 1,
      quantity: 1,
      subtotal: 2,
      tax: 0.9,
      total: 2.9,
    )
    if order.save
      render json: order.as_json
    else
      render json: { errors: order.errors.full_messages }
    end
  end
end
