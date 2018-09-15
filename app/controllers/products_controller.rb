class ProductsController < ApplicationController
	def show
		# 秀出特定產品的 Id
		@product = Product.find(params[:id])
		# 亂數秀出 Id 不是我的其它 4 個產品
		@products = Product.where.not(id: @product.id).order("RANDOM()").limit(4)
		# 配合導覽列需秀出全部的產品分類
		@categories = Category.all
	end
end
