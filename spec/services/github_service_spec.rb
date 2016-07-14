require 'rails_helper'

describe GithubService do
  context "#followers" do
    it "returns a an list of followers" do
      VCR.use_cassette("followers") do
        followers = GithubService.new.get_user_account_followers("MsJennyGiraffe")
        follower = followers.first
        expect(followers.count).to eq(18)
        expect(follower["login"]).to eq("mikedao")
        expect(follower["id"]).to eq(3011748)
      end
    end
  end
end
