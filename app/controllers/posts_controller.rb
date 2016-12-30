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

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

  def edit
    # show edit form for item with :id
		@post = Post.find(params[:id])
  end

  def update
    # update item with :id
	  @post = Post.find(params[:id])
	  @post.update(title: params[:title], description: params[:description])
	  redirect_to post_path(@post)
  end

  def delete
    # show delete form for item with :id
  end

  def destroy
    # delete item with :id
  end


end
