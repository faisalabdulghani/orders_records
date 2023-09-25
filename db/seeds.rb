# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# categary = Category.create(name:"Electronics")
# categary = Category.create(name:"Jewelry")
# categary = Category.create(name:"Sports")


# 15.times do |i|
#     category = Category.all.sample
#     product = Product.create(
#         sku: "SKU00 #{i+1}",
#         name: "Product #{i+1}",
#         description: "Description for Product #{i+1}",
#         price: 20.2*i,
#         category: category
#     )
# end


# 10.times do |i=1|
#     status = rand(0..2) # Random status (0 for active, 1 for complete, 2 for canceled)
#     order_date = Faker::Date.between(from: 1.year.ago, to: Date.today) 
#     order = Order.create(status: status, datetime: order_date)
#   end

 OrderItem.create(
    total_item_quantity: 5,
    order: Order.find_by(id: 17),
    product: Product.find_by(id: 4)
)
