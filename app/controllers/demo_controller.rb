class DemoController < ApplicationController
  def index
    @top_sellers = Product.all.shuffle.take(3)
    @just_in = Product.order(created_at: :desc).limit(3)
  end
end
