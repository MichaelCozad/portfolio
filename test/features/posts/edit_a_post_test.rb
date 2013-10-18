require "test_helper"

feature "EditAPost" do
  scenario "if an existing post, can edit the post" do


    #Given a post exists
    visit new_user_session_path
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: "password"
    click_button "Sign in"

    visit post_path(posts(:cr))

    #When a post is edited

    click_on("Edit")

    fill_in 'Title', with: "Becoming a Code Fellow"

    click_on "Update Post"

    #Then the changes are saved

    page.text.must_include "Post was successfully updated"
    page.text.must_include "Becoming a Code Fellow"

  end
end
