require "test_helper"

feature "EditAPost" do
  scenario "if an existing post, can edit the post" do


    #Given a post exists
    post = Post.create(title: "Becoming a Code Fellow", body: "Means striving for excellence.")



    #When a post is edited
    visit post_path(post)
    click_on("Edit")

    fill_in 'Title', with: 'Becoming a Fellow Code'

    click_on("Submit")

    #Then the changes are saved

    visit post_path(post)
    page.text.must_include 'Becoming a Fellow Code'

  end
end
