class StoreController < ApplicationController
  def index
    @time = Time.now
    @count = increment_count
    @products = Product.all
    #@lineitemstest = line_items.where(:product_id => product_id).first # felipe fragen!
    @lineitemstest = LineItem.all
    @cart = find_or_create_cart
  end

  def increment_count
    session[:counter] ||= 0
    session[:counter] += 1
  end

end
