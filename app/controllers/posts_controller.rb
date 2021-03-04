class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)
  end
  # (1) create a new Post instance
  # (2) pass in the parameters from the form
  # (3) save the record via .save
  # (4) redirect to the newly-created post's show page
end
