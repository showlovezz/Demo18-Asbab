class Admin::PostsController < ApplicationController
	before_action :authenticate_user!
	before_action :authenticate_admin

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			flash[:notice] = "文章建立成功"
			redirect_to admin_posts_path
		else
			flash.now[:alert] = "文章建立失敗"
			render :new
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :description, :image)
	end
end
