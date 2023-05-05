class PostsController < ApplicationController
    def show
        @post = Post.find(params[:id])
    end
    def index
        @posts = Post.all
    end

    def new
        
    end

    def create
        @post = Post.new(params.require(:post).permit(:title, :description))
        @post.save
        redirect_to post_path(@post)
    end

end