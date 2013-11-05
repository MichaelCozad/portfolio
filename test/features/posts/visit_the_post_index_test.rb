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


  scenario "the posts index should be paginated" do
  #Given 10 existing posts
  @posts = []
  10.times do
    @post = Post.create(title: Faker::Lorem.sentence(word_count = 4,
            supplemental = false, random_words_to_add = 6),
            body: Faker:Lorem.paragraphs, published: true,
            author_id: users(:editor).id)
    @posts << @post
  end

  #When I visit posts index
  visit posts_path

  #Then there will be a link to the next page of posts
  page.must_have_content(@posts[1].title)
  page.wont_have_content(@posts[9].title)
  end

end
