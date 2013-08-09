class PostsController < ApplicationController
	def new 
		@post = Post.new
	end
	def create
  	@post = Post.new(:name => params[:name],:comment => params[:comment],:blog_id => params[:blogid])
 	 @post.save
  	redirect_to @post
	end
	def show
		@postshow =Post.find(params[:id])
	end
end
