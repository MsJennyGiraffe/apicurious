class Following < OpenStruct
  def self.all_for(user)
    followings = GithubService.new.get_user_account_followings(user.screen_name)
    followings.map do |following|
      Following.new(following)
    end
  end
end
