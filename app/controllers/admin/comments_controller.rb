class Admin::CommentsController < Admin::ApplicationController
  def index
    if params[:search].present?
      @comments = Comment.matching_fullname_or_message(params[:search]).page params[:page]
    else
      @comments = Comment.where(status: to_bool(params[:status])).page params[:page]
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(status: params[:status])
<<<<<<< HEAD
      redirect_back(fallback_location: (request.referer || root_path), notice: 'Successfully updated comment')
    else
      redirect_back(fallback_location: (request.referer || root_path), notice: 'There was a problem updating comment')
=======
      redirect_to admin_comments_path(status: params[:status]), notice: 'Successfully updated comment'
    else
      redirect_to admin_comments_path(status: params[:status]),  notice:'There was a problem updating comment'
>>>>>>> 2669f3179228394ca7f6d327d06f62ebb82ae199
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to admin_comments_path(status: params[:status]), notice: 'Successfully deleted comment'
  end
end
