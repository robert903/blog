class PostsController < ApplicationController

  def index
    @post = Post.all.order('created_at DESC') #reverses the post order to descended order
  end

  def new
    #code
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

  def show
    @post = Post.find(params[:id]) #This grabs the current post's id parameter and displays that current post when we render it on the show page
  end


  #Rails strong parameters...idk what this is yet... looks like we get post_params from this method
  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
