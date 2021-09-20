class TagsController < ApplicationController

    def def index
        @tags = Tag.all
    end

    def create 

    end

    def destroy 

    end

    private
    
    def tag_params
        params.require(:tag).permit(:name)
    end

end
