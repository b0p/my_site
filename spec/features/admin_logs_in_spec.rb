require 'rails_helper'

feature "log into site", %{

  As the admin,
  I want to log in,
  So that I can view messages and post on the blog.

    [x] Can see a button to log in
    [x] Can successfully log in as the admin

} do

  scenario "admin logs in unsuccessfully" do

    visit root_path
    click_on "Admin"
    fill_in "User", with: "gclooney"
    fill_in "Pass", with: "alwaystry"
    click_on "Log In"

    expect(page).to have_content("Invalid Credentials.")
  end
end
