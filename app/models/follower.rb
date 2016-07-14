class Follower < OpenStruct
  def self.all_for(user)
    followers = GithubService.new.get_user_account_followers(user.screen_name)
    followers.map do |follower|
      Follower.new(follower)
    end
  end
end
