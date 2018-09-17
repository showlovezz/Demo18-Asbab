class Admin::PostsController < Admin::BaseController

	before_action :find_post, only: [:edit, :update, :destroy]

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

	def edit
	end

	def update
		if @post.update(post_params)
			flash[:notice] = "文章修改成功"
			redirect_to admin_posts_path
		else
			flash.now[:alert] = "文章修改失敗"
			render :edit
		end
	end

	def destroy
		@post.destroy
		flash[:alert] = "文章已被刪除"
		redirect_to admin_posts_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :description, :image)
	end

	def find_post
		@post = Post.find(params[:id])
	end
end
