class BlogpostsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = Blogpost.create(post_params)
  end

  private

  def post_params
    params.require(:blogpost).permit(:image)
  end
end
