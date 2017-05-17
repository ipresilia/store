# Helper Methods
def print_divider
puts "*" * 40
puts "\n"
end

# Shopping Cart
@shopping_cart = []


# List of Products
@products = [
  { reference_number: 123, name: "MacBook Air", price: 1200 },
  { reference_number: 124, name: "MacBook Pro", price: 2000 },
  { reference_number: 125, name: "Apple Watch", price: 700 },
  { reference_number: 126, name: "iMac", price: 2500 },
  { reference_number: 127, name: "iPod", price: 300 },
  { reference_number: 128, name: "iPad", price: 500 }
]


# Welcome user & Show products
def welcome_n_product_show
print_divider
  puts "What will you buying from us today?\n
  This is what we have available:\n
  Each product has its own reference number\n
  which you can use to select the products with."
print_divider
  @products.each do |product|
    puts "#{product[:reference_number]} - #{product[:name]} €#{product[:price]}"
  end
end


#User Selection
def select_product
  puts "Select the item(s) you want to buy by using their number of reference: "
  gets.chomp.to_i
end


# Add Selection to cart
def add_to_cart(reference_number)
  product = look_for_product(reference_number)
  if product != nil && product == [:reference_number]
    @shopping_cart << product
    puts "Congrats. The following has been added to the cart successfully: '#{product[:name]}' costing €#{product[:price]}"
  else
    puts "Invalid selection. Please try again with an existing reference_number."
    print_divider
  end
end


# Check and see whether input matches reference_number
def look_for_product(reference_number)
  @products.each do |product|
    if product[:reference_number] == reference_number.to_i
      return product
    end
  end
end








# Visit store (Used to print methods)
loop do
  print_divider
  puts "Welcome to Apple Fan Boy!\n\n"
  welcome_n_product_show
  product_reference_number = select_product
  add_to_cart(product_reference_number)
end
