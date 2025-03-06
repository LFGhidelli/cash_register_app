require "test_helper"

class CartTest < ActiveSupport::TestCase
  test "adding a product to the cart" do
    cart = Cart.create!
    product_one = Product.create!(name: "Green Tea", price: 3.11)
    cart.add_product(product_one)

    assert_equal 1, cart.products.count

    product_two = Product.create!(name: "Coffee", price: 11.23)
    cart.add_product(product_two)

    assert_equal 2, cart.products.count
  end
end
