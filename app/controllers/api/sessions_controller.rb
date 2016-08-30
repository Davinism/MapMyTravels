class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])

    if @user
      log_in_user!(@user)
      render "api/users/show"
    else
      render "Invalid username/password combination"
    end
  end

  def destroy
    @user = current_user
    if @user
      log_out_user!
      render "api/users/show"
    else
      render "Nobody signed in"
    end
  end

end
