class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD'], except: [:index]
  def show
    categories = Category.all
    products = Product.all
  
    @products_count = products.count
    @categories_count = categories.count
   
  end
end
