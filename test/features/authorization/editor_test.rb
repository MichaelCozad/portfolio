require 'test_helper'

feature "I want to use Pundit to restrict access to the site" do

  scenario "Editors should be able to see all posts" do
  #Given a user is signed in as an editor
  visit new_user_session_path
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When
  visit posts_path

  #Then the most recent post is available
  page.find("tr:last")

  end


  scenario "Editors should be able to create posts" do
  #Given a user is signed in as an editor
  visit new_user_session_path
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When they create a post
  visit new_post_path
  fill_in 'Title', with: posts(:peditor).title
  fill_in 'Body',  with: posts(:peditor).body
  click_on 'Create Post'
  #Then the post is created
  page.text.must_include posts(:peditor).title
  end


  scenario "Editors should be able to update posts" do
  #Given a user is signed in as an editor
  visit new_user_session_path
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When they try to update a post
  visit post_path(posts(:peditor))
  click_on("Edit")
  fill_in 'Title', with: "Odoyle doesnt rule"

  click_on "Update Post"
  #Then the post should be updated
  page.text.must_include "Post was successfully updated"

  end


  # scenario "Editors should be able to publish posts" do
  # #Given a user is signed in as an editor
  # visit new_user_session_path
  #   fill_in "Email", with: users(:one).email
  #   fill_in "Password", with: "password"
  #   click_button "Sign in"
  # #When they try to publish a post


  # #Then the post will be published

  #end


  scenario "Editors should be able to delete posts" do
  #Given a user is signed in as an editor
  visit new_user_session_path
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When they try to delete a post
  visit posts_path

  click_link "Destroy"
  #Then the post should be deleted

  page.text.wont_include "Odoyle Rules"
  end





end
