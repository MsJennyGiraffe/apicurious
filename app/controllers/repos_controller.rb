class ReposController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @repos = Repo.all_for(@user)
  end
end
