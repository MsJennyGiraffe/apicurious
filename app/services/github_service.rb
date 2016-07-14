class GithubService
  def initialize
    @connection = Faraday.new("https://api.github.com/")
  end

  def get_user_account_followers(screen_name)
    response = @connection.get("/users/#{screen_name}/followers")
    parse(response)
  end

  def get_user_account_followings(screen_name)
    response = @connection.get("/users/#{screen_name}/following")
    parse(response)
  end

  def parse(response)
    JSON.parse(response.body)
  end
end
