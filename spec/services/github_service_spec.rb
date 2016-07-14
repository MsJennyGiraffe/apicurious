require 'rails_helper'

describe GithubService do
  context "#followers" do
    it "returns a an list of followers" do
      VCR.use_cassette("followers") do
        followers = GithubService.new.get_user_account_followers("MsJennyGiraffe")
        follower = followers.first
        expect(followers.count).to eq(19)
        expect(follower["login"]).to eq("mikedao")
        expect(follower["id"]).to eq(3011748)
      end
    end
  end

  describe GithubService do
    context "#following" do
      it "returns a an list of people the user follows" do
        VCR.use_cassette("following") do
          followings = GithubService.new.get_user_account_followings("MsJennyGiraffe")
          following = followings.first
          expect(followings.count).to eq(30)
          expect(following["login"]).to eq("neight-allen")
          expect(following["id"]).to eq(1031646)
        end
      end
    end
  end
end
