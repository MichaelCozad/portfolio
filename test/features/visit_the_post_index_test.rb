require "test_helper"

feature "VisitThePostIndex" do
  scenario "if posts exist, show all posts" do


    #Given someone created a Post
    Post.create(title: "Becoming a Code Fellow", body: "Means striving for excellence")


    #When someone visits the Posts Index
    visit posts_path


    #Then I should arrive on the Index Page
    #  Then I should see the posts


    page.text.must_include "Becoming a Code Fellow"

  end
end
