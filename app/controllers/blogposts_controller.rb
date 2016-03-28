class BlogpostsController < ApplicationController
  def index
    @posts = Blogpost.all
  end

  def new
    @post = Blogpost.new
  end

  def create
    @post = Blogpost.new(post_params)

    if @post.save
      flash[:notice] = "Entry Added Successfully."
      redirect_to blogposts_path
    else
      flash[:errors] = @post.errors.full_messages.join(". ")
      render :new
    end
  end

  def destroy
    Blogpost.find(params[:id]).destroy
    redirect_to blogposts_path
  end

  private

  def post_params
    params.require(:blogpost).permit(:title, :body, :image)
  end
end
