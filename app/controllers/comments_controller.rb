class CommentsController < ApplicationController
	def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    @comment.save!
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])

    if current_user.admin?
      @comment.destroy
      redirect_to post_path(@post)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :email, :content)
  end
end
