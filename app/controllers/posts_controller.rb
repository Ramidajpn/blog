class PostsController < ApplicationController
    before_action :set_post, only: %i[edit update destroy]
  
    def index
      @posts = Post.all
    end
  
    def new
      @post = Post.new
    end
  
    def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to posts_path, notice: "Post created successfully!"
      else
        render :new
      end
    end
  
    def edit
    @post = Post.find(params[:id])
    end 
  
    def update
      if @post.update(post_params)
        redirect_to posts_path, notice: "Post updated successfully!"
      else
        render :edit
      end
    end
  
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, notice: 'Post was successfully deleted.'
      end
      
    
    def show
        @post = Post.find(params[:id])
      end
    private
  
    def set_post
      @post = Post.find(params[:id])
    end
  
    def post_params
      params.require(:post).permit(:title, :content)
    end
  end
  def new
    @post = Post.new
  end


