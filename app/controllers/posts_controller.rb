class PostsController < ApplicationController
  include ActiveModel::Deserializer

  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post = deserialize(:post).object
    @post.save
    render json: @post
  end
end
