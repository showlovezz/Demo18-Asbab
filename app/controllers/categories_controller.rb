class CategoriesController < ApplicationController
	def show
		@categories = Category.all
		@category = Category.find(params[:id])
		@products = @category.products.all
	end
end
