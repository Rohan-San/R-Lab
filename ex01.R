# List of products
products <- list(
  list(name = "Apple", price = 120),
  list(name = "Banana", price = 35),
  list(name = "Milk", price = 25),
  list(name = "Bread", price = 50),
  list(name = "Eggs", price = 10)
)

# Initialize empty shopping cart
shopping_cart <- list()

# Define cart items
add_cart <- list(
  list(name = "Apple", quantity = 3),
  list(name = "Milk", quantity = 2)
)

# Add items to cart
for (item in add_cart){
  product_name <- item$name
  quantity <- item$quantity
  # Find product in list
  product <- NULL
  for (p in products){
    if (p$name == product_name){
      product <- p
      break
    }
  }
  if (!is.null(product)){
    cart_item <- list(name = product$name, price = product$price, quantity = quantity)
    shopping_cart <- c(shopping_cart, list(cart_item))
    cat("Item added to cart!\n")
  } else {
    cat("Product not found.\n")
  }
}
