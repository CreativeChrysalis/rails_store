class StorefrontController < ApplicationController
  def all_items
@products = Product.all

  end

  def item_by_category
    @products = Product.where(category: params[:category_id])
    @category = Category.find(params[:category_id])
  end

  def item_by_brand
    @products = Product.where(brand: params[:brand])
    @brand = params[:brand]
  end
end
