class BlogPostsController < ApplicationController

  def index
    @posts = BlogPost.order("created_at DESC").page(params[:page]).per(6)
  end

  def new
  end
  
  def create
    BlogPost.create(post_params)
  end
  
  def edit
        @post = BlogPost.find(params[:id])
  end
  
  def update
      post = BlogPost.find(params[:id])
    if user_signed_in?
      post = BlogPost.find(params[:id])
     post.update(post_params)
    end
end
  
  def show
    @post = BlogPost.find(params[:id])
  end
  
   def destroy
    post = BlogPost.find(params[:id])
      post.destroy
      end
  
   private
  def post_params
    params.permit(:title, :text)
  end
    
end
