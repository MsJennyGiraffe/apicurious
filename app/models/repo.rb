class Repo < OpenStruct
  def self.all_for(user)
    repos = GithubService.new.get_user_repos(user.screen_name)
    repos.map do |repo|
      Following.new(repo)
    end
  end

  def self.top_five(user)
    repos = GithubService.new.get_user_repos(user.screen_name)
    repos = repos[0...5]
    repos.map do |repo|
      Following.new(repo)
    end
  end
end
