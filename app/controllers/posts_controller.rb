class PostsController < ApplicationController
    def index
        @posts = Post.all
        render json: @posts
    end

    def create 

    end

    def destroy 

    end

    private

    def post_params
        params.require(:post).permit(:title, :description)
    end
    

   
    
    
end
