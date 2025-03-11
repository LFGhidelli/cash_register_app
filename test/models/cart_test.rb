require "test_helper"

class CartTest < ActiveSupport::TestCase
  test "adding a product to the cart" do
    cart = Cart.create!
    cart.add_product(products(:green_tea))
    assert_equal 1, cart.cart_items.last.quantity

    cart.add_product(products(:green_tea))
    assert_equal 2, cart.cart_items.last.quantity
  end
end
