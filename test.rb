require "http"
require "tty-table"

response = HTTP.get("http://localhost:3000/all_products")
data = response.parse(:json)

response = HTTP.get("http://localhost:3000/one_product")

table = TTY::Table.new
data.each do |product|
  table << [product["id"], product["name"], product["price"]]
end

# render using tty-table
renderer = TTY::Table::Renderer::Basic.new(table)
renderer.render
