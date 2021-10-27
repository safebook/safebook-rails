class PostsController < ApplicationController

  def create
    p params
    post = Post.new(post_params)
    # verify signature
    if post.save
      render json: {}
    else
      render status: 401, json: post.errors
    end
  end

  def get
    posts = Post.where(author: params[:author]).limit(20).all
    render json: posts
  end

  private
  def post_params
    params.permit(:author, :content, :sig)
  end
end
