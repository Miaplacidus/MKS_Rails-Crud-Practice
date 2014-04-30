class CommentsController < ApplicationController
  def create
    video = Video.find(params[:video_id])
    video.comments.create(comment_params)
    # comment = Comment.new(comment_params)
    # comment.save
    redirect_to
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to root_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :action => 'show'
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :video_id)
  end
end
