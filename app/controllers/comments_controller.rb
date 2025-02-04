class CommentsController < ApplicationController
    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.new(comment_params)
      if @comment.save
        redirect_to posts_path, notice: "Comment added successfully!"
      else
        redirect_to posts_path, alert: "Failed to add comment."
      end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:content)
    end
  end
  