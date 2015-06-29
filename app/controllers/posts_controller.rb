class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end

  def create
   @post = PostSerialization.deserialize(post_params)

   if @post.save
     render json: @post, status: :created, location: @post
   else
     render json: @post.errors, status: :unprocessable_entity
   end
 end

 private

 def post_params
   puts PostSerialization._params
   @params.require(:post).permit(PostSerialization._params)
 end
end
