require "rails_helper"

RSpec.feature "logging in" do
  scenario "user can login with github" do
    visit "/"
    click_link "Sign in with Github"
    expect(current_path).to eq("/")
    expect(page).to have_content("test_user")
    expect(page).to have_content("Logout")
    expect(page).to_not have_content("Sign in with Github")
  end
end
