# Helper Methods
def print_divider
puts "*" * 40
puts "\n"
end

shopping_cart = []

products = [
  { reference_number: 123, name: "Macbook Air", price: 1200 },
  { reference_number: 124, name: "Macbook Pro", price: 2000 },
  { reference_number: 125, name: "Apple Watch", price: 700 },
  { reference_number: 126, name: "iMac", price: 2500 },
  { reference_number: 127, name: "iPod", price: 300 },
  { reference_number: 128, name: "iPad", price: 500 }
]


# Welcoming user
print_divider
puts "Welcome to Apple Fan Boy!"
print_divider
puts "What will you buying from us today?\n
This is what we have available: "
products.each do |product|
  puts "#{product[:name]} #{product[:price]}"
end
