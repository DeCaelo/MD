require "rails_helper"

RSpec.describe "User signing in" do

  background do
    @user = create(:user)
  end

  scenario "successfully"  do
    sign_in @user

    expect(page).to have_content @user.email
  end

  scenario "unsuccessfully" do
    visit new_user_session_path
    fill_in "Email", with: "wrong email"
    fill_in "Password", with: "wrong password"
    click_on "Log in"

    expect(page).not_to have_content @user.email
  end
end
