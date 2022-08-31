Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/all_products", controller: "products", action: "all_products_method"
  get "/one_product", controller: "products", action: "one_product_method"
  get "/second_product", controller: "products", action: "second_product_method"
  get "/third_product", controller: "products", action: "third_product_method"
end
