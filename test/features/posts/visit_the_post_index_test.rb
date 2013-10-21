require "test_helper"

feature "VisitThePostIndex" do
  scenario "if posts exist, show all posts" do


    #Given someone created a Post
    visit new_user_session_path
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: "password"
    click_button "Sign in"
    #When someone visits the Posts Index
    visit posts_path


    #Then I should arrive on the Index Page
    #  Then I should see the posts


    page.text.must_include "Odoyle Rules"

  end
end
