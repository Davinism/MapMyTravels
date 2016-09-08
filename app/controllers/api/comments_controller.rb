class Api::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render "api/trips/index/"
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render "api/comments/show"
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:comment][:id])

    if @comment.destroy
      render json: params[:comment][:user_id]
    else
      render json: "Cannot destroy this comment."
    end
  end

  private
  def comment_params
    params.require(:comment).permit(
      :author_id,
      :trip_id,
      :body
    )
  end
end
