class CommentsController < ApplicationController
  before_filter :set_post

  def index
    @comments = @post.comments
  end


  def new
    @comment = @post.comments.new
  end


  def create
    @comment = @post.comments.new(params[:comment])
      if @comment.save
        redirect_to post_path(@post), notice: "Comment created."
      else
        redirect_to new_post_comment_path(@post)
      end
  end



  private

  def set_post
    @post = Post.find(params[:post_id])
  end

end
