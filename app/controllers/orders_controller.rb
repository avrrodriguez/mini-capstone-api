class OrdersController < ApplicationController
  def index
    if current_user
      orders = Order.all
      render json: orders.as_json
    end
  end

  def show
    if current_user
      order = Order.find_by(id: params["id"])
      render json: order.as_json
    end
  end

  def create
    # code is broken in front end, probably around here, also the show and index authentication might not be good either

    if current_user
      order = Order.new(
        user_id: current_user.id,
        product_id: 1,
        quantity: 1,
        subtotal: Product.find_by(id: params["id"]).price * quantity,
        tax: Product.find_by(id: params["id"]).tax * quantity,
        total: subtotal + tax,
      )
      if order.save
        render json: order.as_json
      else
        render json: { errors: order.errors.full_messages }
      end
    end
  end
end
