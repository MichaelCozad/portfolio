require 'test_helper'

feature "CommentOnPosts" do
  scenario "I should be able to comment on individual blog posts" do
  #Given a comment was created on a post
  visit post_path(posts(:peditor))  # OR NEW ROUTE


  fill_in "Content", with: "Tommy Boy Rules"

  click_on 'Create Comment'
  #When I re-visit the post show page
  visit post_path(posts(:peditor))  # OR NEW ROUTE


  #Then I should see the post's comment

  page.text.must_include 'Tommy Boy Rules'

  end



  # scenario "An author should be able to approve comments" do
  # #Comments should not display until they are approved by an author or editor


  # end



  # scenario "An editor should be able to approve comments" do
  # #Comments should not display until they are approved by an author or editor


  # end






end
