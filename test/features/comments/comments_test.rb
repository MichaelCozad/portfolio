require 'test_helper'

feature "CommentOn" do
  scenario "I should be able to comment on individual blog posts" do
  #Given a comment was created on a post
  visit new_post_comment_path(posts(:peditor))


  fill_in "Content", with: "Tommy Boy Rules"

  click_on 'Create Comment'
  #When I get redirected to the post show page


  #Then I should see the post's comment

  page.text.must_include 'Comment created'

  end



  # scenario "An author should be able to approve comments" do
  # #Comments should not display until they are approved by an author or editor


  # end



  # scenario "An editor should be able to approve comments" do
  # #Comments should not display until they are approved by an author or editor


  # end

  scenario "I should be able to comment on individual blog posts" do
  #Given a comment was created on a post
  visit new_project_comment_path(projects(:projed))


  fill_in "Content", with: "Tommy Boy Rules"

  #When I get redirected to the post show page
  click_on 'Create Comment'

  #Then I should see the post's comment
  page.text.must_include 'Comment created'
  end
end
