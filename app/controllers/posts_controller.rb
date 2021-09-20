class PostsController < ApplicationController
    before_action :set_post, only: [:destroy]

    def index
        @posts = Post.all
        render json: PostSerializer.new(@posts)
    end

    def create 
        @post = Post.create(post_params)
        if @post.save 
            render json: PostSerializer.new(@post), status: :ok
        else
            render json: @post.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @post.destroy 
        head :no_content
    end

    private

    def post_params
        params.require(:post).permit(:title, :description)
    end
    
    def set_post
        @post = Post.find(params[:id])
    end
   
    
    
end
