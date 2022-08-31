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
    product = Product.new(
      name: "Eraser",
      price: 1,
      image_url: "https://www.quill.com/is/image/Quill/sp44335983_s7?$img400$",
      description: "An eraser, used to erase pencil marks and others.",
    )
    product.save
    render json: product.as_json
  end
end
