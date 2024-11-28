class LikesController < ApplicationController
    def create
      @post = Post.find(params[:post_id])
    #   @post.likes.create
      @likes = @post.likes

      redirect_to posts_path, notice: "Post liked!"
    end
  end
  