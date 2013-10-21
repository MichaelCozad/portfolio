require 'test_helper'

feature "I want to use Pundit to restrict access to the site" do

  scenario "Authors should be able to create posts" do
  #Given a user is signed in as an author
  visit new_user_session_path
    fill_in "Email", with: users(:two).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When they create a post
  visit new_post_path
  fill_in 'Title', with: posts(:pfauthor).title
  fill_in 'Body',  with: posts(:pfauthor).body
  click_on 'Create Post'
  #Then the post is created
  page.text.must_include posts(:pfauthor).title
  end


  scenario "Authors should be able to update posts" do
  #Given a user is signed in as an author
  visit new_user_session_path
    fill_in "Email", with: users(:two).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When they update a post
  visit post_path(posts(:pfauthor))
  click_on("Edit")

  fill_in 'Body', with: "This is how I learned web development"

  click_on "Update Post"
  #Then the post should be updated
  page.text.must_include "Post was successfully updated"

  end


  # scenario "Authors should NOT be able to publish posts" do
  # #Given a user is signed in as an author
  # visit new_user_session_path
  #   fill_in "Email", with: users(:two).email
  #   fill_in "Password", with: "password"
  #   click_button "Sign in"
  # #When they try to publish a post

  # #Then
  # page.text.must_include 'not authorized'
  # end


  scenario "Authors should not be able to delete posts" do
  #Given a user is signed in as an author
  visit new_user_session_path
    fill_in "Email", with: users(:two).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When they try to delete a post
  visit posts_path

  #Then the button wont be there
  page.text.wont_include "Delete"
  end







end
