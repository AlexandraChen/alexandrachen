class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :current_user, only: [:new, :create, :update]

  def show
  end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.blog.posts.new(post_params)
    if @post.save
      redirect_to admin_panel_path, notice: "Post succesfully created" 
    else
      flash[:notice] = "post failed"
      render :new
    end
  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :published_date, :blog_id)
  end

end
