class BlogsController < ApplicationController
  before_action :authenticate_user!
  before_action :current_user, only: [:new, :create, :update]

  def show
  end

  def new
    @blog = current_user.blog.new
  end

  def create
    @blog = current_user.blogs.new(blog_params)
    if @blog.save
      redirect_to admin_panel_path, notice: "Blog succesfully created" 
    else
      flash[:notice] = "blog failed"
      render :new
    end
  end

  def update
  end

  private

  def blog
    params.require(:blog).permit(:name, :user_id)
  end
end
