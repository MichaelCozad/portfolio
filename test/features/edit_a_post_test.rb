require "test_helper"

feature "EditAPost" do
  scenario "if an existing post, can edit the post" do


    #Given a post exists
    post = Post.create(title: "Becoming a Code Fellow", body: "Means striving for excellence.")

    visit post_path(post)

    #When a post is edited

    click_on("Edit")

    fill_in 'Title', with: 'Becoming a Fellow Code'

    click_on "Update Post"

    #Then the changes are saved

    page.text.must_include "Post was successfully updated"
    page.text.must_include 'Becoming a Fellow Code'

  end
end
