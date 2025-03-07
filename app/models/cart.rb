class Cart < ApplicationRecord
  has_many :cart_items
  has_many :products, through: :cart_items

  def add_product(product, quantity = 1)
    cart_item = self.cart_items.find_by(product: product)

    if cart_item
      cart_item.increment!(:quantity, quantity)
    else
      cart_items.create(product: product, quantity: quantity)
    end
  end
end
