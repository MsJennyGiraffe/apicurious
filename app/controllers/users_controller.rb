class UsersController < ApplicationController
  def show
    @user = current_user
    @followings = Following.all_for(@user)
    @followers = Follower.all_for(@user)
    @repos = Repo.top_five(@user)
  end
end
