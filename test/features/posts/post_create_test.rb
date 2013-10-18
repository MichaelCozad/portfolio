require "test_helper"

feature "creating a post" do
  scenario "creates a post with valid data" do



    # Given an authorized user complets a new post form
    visit new_user_session_path
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: "password"
    click_button "Sign in"

    #given a completed post form
    visit new_post_path


    fill_in 'Title', with: posts(:cr).title
    fill_in 'Body',  with: posts(:cr).body

    #when I submit the form
    click_on 'Create Post'



    #then I should see the post

    page.text.must_include 'Post was successfully created'
    page.text.must_include posts(:cr).title
    assert page.has_css? "#author"
    page.text.must_include users(:one).email

  end
end
