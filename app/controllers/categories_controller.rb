class CategoriesController < ApplicationController
	def show
		# 配合導覽列需秀出全部的產品分類
		@categories = Category.all
		# 找出特定的分類 Id
		@category = Category.find(params[:id])
		# 秀出同一分類下所有的產品
		@products = @category.products.all
	end
end
