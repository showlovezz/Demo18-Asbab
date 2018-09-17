class Admin::AsbabsController < Admin::BaseController
	def index
		# 需要抓出 product.count 數量
		@products = Product.all

		# 需要抓出 post.count 數量
		@posts = Post.all

		# 需要抓出 user.count 數量
		@users = User.all
	end
end
