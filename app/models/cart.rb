class Cart < ApplicationRecord
  has_secure_token

  has_many :cart_products, dependent: :destroy
  has_many :products, through: :cart_products
end
