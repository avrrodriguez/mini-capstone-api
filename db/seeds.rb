# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Product.create(
#   name: "pencil",
#   price: 2,
#   image_url: "https://weareticonderoga.com/wp-content/uploads/2019/06/13308_GLAMOUR_2000X2000.png",
#   description: "yellow pencil, type 2, Ticonderoga",
# )

# Product.create(
#   name: "ruler",
#   price: 4,
#   image_url: "https://cdn5.vectorstock.com/i/1000x1000/79/69/ruler-vector-6227969.jpg",
#   description: "an orange ruler measuring up to 16 milimeteres",
# )

# Product.create(
#   name: "stapler",
#   price: 5,
#   image_url: "https://bostitchoffice.com/media/catalog/product/cache/8d622783d0b606912c99e4ab1818c82c/b/4/b440-black_1_main_300dpi.jpg",
#   description: "black stapler",
# )

# Product.create(
#   name: "donkey",
#   price: 4.234,
#   image_url: "Randome url",
#   description: "long winded description text",
# )

puts "done"

# Supplier.create(
#   name: "GlassCo",
#   email: "glassco@test.com",
#   phone_number: "123-123-1245",
# )

# Supplier.create(
#   name: "OfficeInc",
#   email: "officeinc@test.com",
#   phone_number: "123-123-1245",
# )

# Supplier.create(
#   name: "CommonSuppliesInc",
#   email: "comsupinc@test.com",
#   phone_number: "123-123-1245",
# )

Image.create(
  url: "https://m.media-amazon.com/images/I/61t4X53UwoL._AC_SL1500_.jpg",
  product_id: 3,
)

Image.create(
  url: "https://media.accobrands.com/media/560-560/400345.jpg?width=1360px&height=898px",
  product_id: 3,
)

Image.create(
  url: "https://media.officedepot.com/images/f_auto,q_auto,e_sharpen,h_450/products/908194/908194_o51_et_8038392/908194",
  product_id: 3,
)

Image.create(
  url: "https://images.ctfassets.net/f1fikihmjtrp/46vOKllYdc1eEGZKXO5eS2/6387e4664ee704658d0b183444c12b52/20305-single-3ww-l.jpg",
  product_id: 1,
)

Image.create(
  url: "https://weareticonderoga.com/wp-content/uploads/2019/06/13308_GLAMOUR_2000X2000.png",
  product_id: 1,
)

Image.create(
  url: "https://media.officedepot.com/images/f_auto,q_auto,e_sharpen,h_450/products/724522/724522_o03_rlr_6_in_blu_100714/724522",
  product_id: 2,
)

Image.create(
  url: "https://upload.wikimedia.org/wikipedia/commons/e/e8/Office-pink-erasers.jpg",
  product_id: 5,
)
