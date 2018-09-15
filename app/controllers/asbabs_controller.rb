class AsbabsController < ApplicationController
	def index
		# 首頁亂數秀出 4 個產品
		@products = Product.order("RANDOM()").limit(4)
		# 首頁秀出全部的分類
		@categories = Category.all
	end
end
