require "test_helper"

class CartsControllerTest < ActionDispatch::IntegrationTest
  test "should create a cart if not existing" do
    get products_path
    assert_not_nil session[:cart_id]
    assert Cart.exists?(id: session[:cart_id])
  end

  test "should use the same cart across requests" do
    get products_path
    cart_id = session[:cart_id]

    get products_path
    assert_equal cart_id, session[:cart_id]
  end
end
