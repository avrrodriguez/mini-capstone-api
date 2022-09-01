require "http"

response = HTTP.patch("http://localhost:3000/products/6.json", { "name": "Not test name" })
pp response.parse(:json)
