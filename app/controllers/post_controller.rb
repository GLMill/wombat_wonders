class PostController < ApplicationController

    def index
        @post = current_user.posts.build
        @posts = Post.all
    end

    def show
        #@posts = Post.all
      
    end



    def create 
        @post = current_user.posts.build(post_params)
        @post.user = current_user
        @post.save
        redirect_to post_index_path
    end 

    private
    def post_params
      params.require(:post).permit(:title, :image)
    end

    def current_user_id
        current_user[:id]
    end
end
