require "test_helper"

feature "creating a post" do
  scenario "creates a post with valid data" do



    #click a button says creates new post
    #page should have form field
    #put some data in
    #user should see success message


    #given a completed post form
    visit new_posts_path


    fill_in 'Title', with: 'arb title'
    fill_in 'Content', with: 'long time ago far far away'

    #when I submit the form
    click_on "Create Post"



    #then I should see the post
    page.text.must_include 'arb title'
    page.text.must_include 'long time ago far far away'


    # and message success
    page.text.must_include 'Posted was successfully created'


  end
end
