class CartsController < ApplicationController
  include CartScoped
  def show
    @cart = Cart.find(session[:cart_id])
  end

  def update
    product = Product.find(params[:product_id])
    quantity = params[:quantity].to_i

    @cart.add_product(product, quantity)

    redirect_to root_path, notice: "#{product.name} added to the cart!"
  end
end
