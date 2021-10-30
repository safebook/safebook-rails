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
    p params[:author]
    posts = Post.where(author: params[:author]).limit(20).all
    p posts
    render json: posts
  end

  private
  def post_params
    params.permit(:author, :content, :sig)
  end
end
