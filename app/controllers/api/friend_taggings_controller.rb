class Api::FriendTaggingsController < ApplicationController
  def create
    @friend_tagging = FriendTagging.new(friend_tagging_params)

    if @friend_tagging.save
      render "api/friend_taggings/show"
    else
      render json: @friend_tagging.errors.full_messages, status: 422
    end
  end

  def destroy
    @friend_tagging = FriendTagging.find_by(
      user_id: params[:friend_tagging][:user_id],
      friend_id: params[:friend_tagging][:friend_id]
      )

    if @friend_tagging.destroy
      render "api/friend_taggings/show"
    else
      render json: "Cannot destroy this friend tagging."
    end
  end

  private
  def friend_tagging_params
    params.require(:friend_tagging).permit(
      :user_id,
      :friend_id
    )
  end
end
