class CartProductsController < ApplicationController
  def create
    @cart_product = Current.cart.cart_products.build(cart_product_params)

    if @cart_product.save
      respond_to do |format|
        format.turbo_stream
      end
    end
  end

  private
    def cart_product_params
      params.require(:cart_product).permit(:product_id)
    end
end
