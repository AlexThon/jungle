class Admin::DashboardController < ApplicationController
  def show
    categories = Category.all
    products = Product.all
  
    @products_count = products.count
    @categories_count = categories.count
   
  end
end
