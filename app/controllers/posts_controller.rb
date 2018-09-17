class PostsController < ApplicationController
	def show
		# 秀出特定的 Post 文章
		@post = Post.find(params[:id])

		# 配合導覽列需秀出全部的產品分類
		@categories = Category.all

		# 首頁秀出最新文章
		@posts = Post.order("created_at DESC").limit(5)
	end
end
