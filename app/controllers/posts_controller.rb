class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    
  def index
    if params[:query].present?
      @posts = Post.where("title LIKE ? OR description LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
                   .paginate(page: params[:page], per_page: 10)
                   .order('created_at DESC')
    else
      @posts = Post.paginate(page: params[:page], per_page: 10).order('created_at DESC')
    end
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.order(created_at: :desc)
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
