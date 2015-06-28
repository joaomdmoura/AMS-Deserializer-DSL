class PostsController < ApplicationController
  include ActiveModel::Deserializer

  def index
    @posts = Post.all
    render json: @posts
  end

  def create
   @post = PostSerialization.new(post_params).deserialize

   if @post.save
     render json: @post, status: :created, location: @post
   else
     render json: @post.errors, status: :unprocessable_entity
   end
 end

  # def create
  #   @post = deserialize(:post).object
  #   @post.save
  #   render json: @post
  # end
end
