require "test_helper"

feature "creating a post" do
  scenario "creates a post with valid data" do



    #click a button says creates new post
    #page should have form field
    #put some data in
    #user should see success message


    #given a completed post form
    visit new_post_path


    fill_in 'Title', with: posts(:cr).title
    fill_in 'Body',  with: posts(:cr).body

    #when I submit the form
    click_on 'Create Post'



    #then I should see the post

    page.text.must_include 'Post was successfully created'
    page.text.must_include posts(:cr).title


  end
end
