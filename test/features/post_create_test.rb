require "test_helper"

feature "creating a post" do
  scenario "creates a post with valid data" do



    #click a button says creates new post
    #page should have form field
    #put some data in
    #user should see success message


    #given a completed post form
    visit new_post_path


    fill_in 'Title', with: 'Code Rails'
    fill_in 'Body', with: 'This is how I learned to make Rails apps.'

    #when I submit the form
    click_on 'Create Post'



    #then I should see the post

    page.text.must_include 'Post was successfully created'
    page.text.must_include 'how I learned to make Rails apps'


  end
end
