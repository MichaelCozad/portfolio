require "test_helper"

feature "VisitThePostIndex" do
  scenario "if posts exist, show all posts" do


    #Given someone created a Post
    Post.create(title: posts(:cf).title, body: posts(:cf).body)


    #When someone visits the Posts Index
    visit posts_path


    #Then I should arrive on the Index Page
    #  Then I should see the posts


    page.text.must_include posts(:cf).title

  end
end
