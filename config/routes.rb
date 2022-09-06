Rails.application.routes.draw do
  # product routes
  get "/products", controller: "products", action: "index"
  get "/products/:id", controller: "products", action: "show"
  post "/products", controller: "products", action: "create"
  patch "/products/:id", controller: "products", action: "update"
  delete "/products/:id", controller: "products", action: "destroy"

  # supplier routes
  get "/suppliers", controller: "suppliers", action: "index"
  get "/suppliers/:id", controller: "suppliers", action: "show"
  post "/suppliers", controller: "suppliers", action: "create"
  patch "/suppliers/:id", controller: "suppliers", action: "update"
end
