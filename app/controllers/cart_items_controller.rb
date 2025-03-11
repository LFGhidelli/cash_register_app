class CartItemsController < ApplicationController
  def destroy
    @product = CartItem.find(params[:id])
    @product.destroy
    redirect_to products_path
  end
end
