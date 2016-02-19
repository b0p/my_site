require 'rails_helper'

feature "send message", %{

  As a user,
  I want to send a message,
  So that I can get in touch with a good-looking fellow.

    [x] Can see a form for submitting a message
    [x] Can successfully submit a message

} do

  scenario "user submits a message" do

    visit root_path
    fill_in "Name", with: "Bilbo"
    fill_in "Email", with: "bbags@thehobbit3d.net"
    fill_in "Message", with: "yo yo"
    click_on "Send Message"

    expect(page).to have_content("Message Sent Successfully")
  end
end
