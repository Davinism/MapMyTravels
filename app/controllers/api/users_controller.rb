class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      log_in_user!(@user)
      render "api/users/show"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def index
    @users = User.all
    render "api/users/index"
  end

  def friends
    @user = User.find_by(id: params[:id])
    @friends = @user.friends
    render "api/users/friends"
  end

  def other_users
    @users = User.where.not(id: params[:id])
    render "api/users/index"
  end

  def feed_trips
    @user = User.find_by(id: params[:id])
    @friends = @user.friends
    @trips = @user.trips.to_a
    @friends.to_a.each do |friend|
      @trips.concat(friend.trips)
    end

    render "api/users/feed_trips"
  end

  def update
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name,
          :date_of_birth, :gender, :bio, :hobbies, :kind_of_traveler)
  end

end
