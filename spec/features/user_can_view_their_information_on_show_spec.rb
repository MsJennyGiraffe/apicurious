require "rails_helper"

RSpec.feature "user show page" do
  scenario "user can view their information" do
    visit "/"
    click_link "Sign in with Github"
    click_link "MsJennyGiraffe"

    expect(current_path).to eq("users/")
  end
end
