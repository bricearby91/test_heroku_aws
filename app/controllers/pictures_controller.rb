class PicturesController < ApplicationController

   def create
    @product = Product.find(params[:id])
    @product.picture.attach(params[:picture])
    redirect_to(product_path(@product))
  end

  def new
  end
end
