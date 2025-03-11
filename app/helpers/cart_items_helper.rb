module CartItemsHelper
  def strikethrough_if(item)
    if item.product.name == "Green Tea" && item.quantity >=2
      "text-decoration-line-through"
    elsif item.product.name == "Strawberries" && item.quantity >=3
      "text-decoration-line-through"
    elsif item.product.name == "Coffee" && item.quantity >=3
      "text-decoration-line-through"
    end
  end

  def special_offer_total(cart)
    cart.cart_items.sum { | cart_item | cart_item.special_offer_rules || 0 }
  end

  def total_price(cart)
    cart.cart_items.sum { |cart_item| cart_item.product.price * cart_item.quantity }
  end
end
