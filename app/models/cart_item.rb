class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  include PricingRules

  def special_offer_rules
    if product.name == "Green Tea"
      green_tea_offer
    elsif product.name == "Strawberries"
      strawberry_offer
    elsif product.name == "Coffee"
      coffee_offer
    end
  end

  private
    def green_tea_offer
      if quantity >= 2
        paid_items = (quantity / 2) + (quantity % 2)
        (product.price * paid_items).round(2)
      end
    end

    def strawberry_offer
      if quantity >= 3
        (quantity * 4.5).round(2)
      end
    end

    def coffee_offer
      if quantity >= 3
        ((product.price * quantity) * 0.67).round(2)
      end
    end
end
