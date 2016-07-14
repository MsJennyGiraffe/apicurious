class FollowersController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @followers = Follower.all_for(@user)
  end
end
