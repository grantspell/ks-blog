class PostsController < ApplicationController

    def index
        @posts = Post.all

        # render json: @posts
    end

    def show
        @post = Post.find(params[:id])

        # render json: @post
    end
    
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        
        if @post.valid?
            @post.save
            redirect_to @post
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to @post
    end

    private

    def post_params
        params.require(:post).permit(:iconImage, :headerImage, :title, :content, :tags)
    end
    
end
