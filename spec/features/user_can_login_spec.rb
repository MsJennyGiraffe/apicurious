require "rails_helper"

RSpec.feature "logging in" do
  scenario "user can login with github" do
    VCR.use_cassette("github") do
      visit "/"
      click_link "Sign in with Github"
      expect(current_path).to eq("/")
      expect(page).to have_content("MsJennyGiraffe")
      expect(page).to have_content("Logout")
      expect(page).to_not have_content("Sign in with Github")
    end
  end
end
