class FollowingsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @followings = Following.all_for(@user)
  end
end
