class PostsController < ApplicationController

	def index
		# 首頁排序 新 => 舊
		@posts = Post.order("created_at DESC")

		# 配合導覽列需秀出全部的產品分類
		@categories = Category.all
	end

	def show
		# 秀出特定的 Post 文章
		@post = Post.find(params[:id])

		# 配合導覽列需秀出全部的產品分類
		@categories = Category.all

		# show 頁面秀出最新文章
		@posts = Post.order("created_at DESC").limit(5)

		# 建立評論
		@comment = Comment.new
	end
end
