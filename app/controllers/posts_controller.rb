class PostsController < ApplicationController
    def show
        @post = Post.find(params[:id])
    end
    def index
        @posts = Post.all
    end

    def new
        #to make available instance for error checking
        @post = Post.new
    end

    def create
        #getting the required info from the form
        @post = Post.new(params.require(:post).permit(:title, :description))

        if 
        
       if @post.save
        #redirecting to the new made post
            flash[:notice] = "Post was created successfully."
            redirect_to post_path(@post)
       else
        #rendering the form again and displaying error messages
           render 'new'
       end
    end

end