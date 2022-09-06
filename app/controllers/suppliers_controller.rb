class SuppliersController < ApplicationController
  def index
    render json: Supplier.all.as_json
  end

  def show
    supplier = Supplier.find(params[:id])
    render json: supplier.as_json
  end

  def create
    supplier = Supplier.new(
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"],
    )
    supplier.save
    render json: supplier.as_json
  end

  def update
    # yet to finish crud routes
    supplier = Supplier.find(params[:id])
    supplier.name = params["name"]
    render json: { "message": "works" }
  end
end
