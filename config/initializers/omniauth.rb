Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['github_api_key'], ENV['github_secret_key']
end
