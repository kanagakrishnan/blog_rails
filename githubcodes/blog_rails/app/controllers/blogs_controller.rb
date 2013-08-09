class BlogsController < ApplicationController
  def new	
  @blog=Blog.new
  end
  def create
    @blog = Blog.new(:author => params[:author],:title => params[:title], :content => params[:content])
   @blog.save
    redirect_to @blog
  end
  def queries
    @blog1 = Blog.all
    @dgrp=Blog.group('date(created_at)')
    @mgrp=Blog.group('month(created_at)')
    @auth=Blog.select(:author).distinct
  end
  def index
  	@blogs=Blog.all
  end
  def show
	@blogshow= Blog.find(params[:id])
  end
  def destroy 
  	@blog.destroy
  end
end
