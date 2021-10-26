class PostController < ApplicationController

  def create
    post = Post.build(post_params)
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
end
