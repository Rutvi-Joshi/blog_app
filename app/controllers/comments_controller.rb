class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      redirect_to post_path(@post), notice: 'Comment added successfully!'
    else
      redirect_to post_path(@comment.post), alert: 'Failed to add comment.'
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
