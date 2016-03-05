class CommentsController < ApplicationController
  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @post = Post.find(params[:post_id])

    @post.comments.create(comments_param)
    flash[:notice] = "Comment successfully created"

    redirect_to post_url(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    flash[:notice] = "Comment has been deleted"
    redirect_to post_url(@post)
  end


  private

  def comments_param
    params.require(:comment).permit(:name, :body)
  end
end
