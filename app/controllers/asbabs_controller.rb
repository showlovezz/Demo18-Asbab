class AsbabsController < ApplicationController
	def index
		# 首頁亂數秀出 4 個產品
		@products = Product.order("RANDOM()").limit(4)

		# 首頁秀出全部的分類
		@categories = Category.all

		# 首頁秀出最新文章
		@posts = Post.order("created_at DESC").limit(3)
	end
end
