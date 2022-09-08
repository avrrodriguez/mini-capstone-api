Rails.application.routes.draw do
  # Product routes
  get "/products", controller: "products", action: "index"
  get "/products/:id", controller: "products", action: "show"
  post "/products", controller: "products", action: "create"
  patch "/products/:id", controller: "products", action: "update"
  delete "/products/:id", controller: "products", action: "destroy"

  # Supplier routes
  get "/suppliers", controller: "suppliers", action: "index"
  get "/suppliers/:id", controller: "suppliers", action: "show"
  post "/suppliers", controller: "suppliers", action: "create"
  patch "/suppliers/:id", controller: "suppliers", action: "update"

  # Order routes
  get "/orders", controller: "orders", action: "index"
  get "/orders/:id", controller: "orders", action: "show"
  post "/orders", controller: "orders", action: "create"

  # Authentication routes
  post "/users", controller: "users", action: "create"
  post "/sessions", controller: "sessions", action: "create"
end
