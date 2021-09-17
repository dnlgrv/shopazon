class CartProductsController < ApplicationController
  def create
    @cart_product = Current.cart.cart_products.build(cart_product_params)

    if @cart_product.save
      respond_to do |format|
        format.turbo_stream { render :update_cart }
      end
    end
  end

  def destroy
    @cart_product = CartProduct.find(params[:id])

    if @cart_product.destroy
      respond_to do |format|
        format.turbo_stream { render :update_cart }
      end
    end
  end

  private
    def cart_product_params
      params.require(:cart_product).permit(:product_id)
    end
end
