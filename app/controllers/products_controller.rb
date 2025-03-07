class ProductsController < ApplicationController
  include CartScoped
  def index
    @products = Product.all
  end
end
