class Cart < ApplicationRecord
  has_secure_token

  has_many :cart_products, dependent: :destroy
  has_many :products, through: :cart_products

  def quantity_of(product)
    cart_products.where(product: product).count
  end

  def total_price
    products.sum(&:price)
  end
end
