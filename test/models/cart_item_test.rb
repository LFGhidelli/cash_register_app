require "test_helper"

class CartItemTest < ActiveSupport::TestCase
  include ActionView::Helpers::NumberHelper
  test "adding a product to the cart" do
    cart = Cart.create!

    cart.add_product(products(:green_tea))
    assert_equal 1, cart.cart_items.last.quantity

    cart.add_product(products(:green_tea))
    assert_equal 2, cart.cart_items.last.quantity
  end

  test "green tea special offer rule" do
    cart = Cart.create!

    cart.add_product(products(:green_tea), 2)
    assert_equal "$3.11", number_to_currency(cart.cart_items.first.special_offer_rules)
  end

  test "coffee special offer rule" do
    cart = Cart.create!

    products(:green_tea).update_columns(name: "Coffee", price: 11.23)

    cart.add_product(products(:green_tea), 3)
    assert_equal "$22.46", number_to_currency(cart.cart_items.first.special_offer_rules)
  end

  test "strawberries special offer rule" do
    cart = Cart.create!
    products(:green_tea).update_columns(name: "Strawberries", price: 5)

    cart.add_product(products(:green_tea), 3)
    assert_equal "$13.50", number_to_currency(cart.cart_items.first.special_offer_rules)
  end
end
