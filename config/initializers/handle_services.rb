class Tweet
  Client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["twitter_api_key"]
    config.consumer_secret     = ENV["twitter_api_secret"]
    config.access_token        = ENV["twitter_access_token"]
    config.access_token_secret = ENV["twitter_access_token_secret"]
  end
end

class LinkedInProfile
  Client = LinkedIn::Client.new(
    ENV["linkedin_clientID"],
    ENV["linkedin_clientSecret"]
  )

  Client.authorize_from_access(*YAML.load(ENV["linkedin_credentials"]))
end

class Github
  Client = Octokit::Client.new(access_token: ENV["github_access_token"])
end
