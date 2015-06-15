class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post = PostSerialization.new(params).deserialize
    @post.save
    render json: @post
  end
end