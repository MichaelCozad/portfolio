class CommentsController < ApplicationController
  before_filter :load_commentable

  def index

    @comments = @commentable.comments

  end


  def new
    @comment = @post.comments.new
  end


  def create
    @comment = @post.comments.new(params[:comment])
      if @comment.save
        #current_user.comments << @comment
        redirect_to post_path(@post), notice: "Comment created."
      else
        redirect_to new_post_comment_path(@post)
      end
  end



  private

  def load_commentable
    resource, id = request.path.split('/')[1,2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end

end
