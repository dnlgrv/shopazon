class ApplicationController < ActionController::Base
  before_action :set_current_cart
  before_action :create_cart, unless: -> { Current.cart.present? }

  private
    def set_current_cart
      if session[:cart_id].present? && cart = Cart.find_by(id: session[:cart_id])
        Current.cart = cart
      end
    end

    def create_cart
      cart = Cart.create!
      session[:cart_id] = cart.id
      Current.cart = cart
    end
end
