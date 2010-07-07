class StoreController < ApplicationController
  def index
    @time = Time.now
    @products = Product.all
  end

end
