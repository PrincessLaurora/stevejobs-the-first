class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
		@listings = @category.items
  end


end
