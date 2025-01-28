class PostsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @posts = Post.paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end

  def new
    @post = current_user.posts.build
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path, notice: 'Post created successfully!'
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, images: [], tag_list: [])
  end
end
