require 'test_helper'

feature "I want to use Pundit to restrict access to the site" do

scenario "Visitors should be able to read all posts" do
  #Given a user is signed in as an visitor
  visit new_user_session_path
    fill_in "Email", with: users(:zoo).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When
  visit posts_path
  page.find("tr:last")
  #Then
  page.text.must_include("tr:last").title
  end


  scenario "Visitors should not be able to delete a post" do
  #Given a user is signed in as an visitor
  visit new_user_session_path
    fill_in "Email", with: users(:zoo).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When
  visit posts_path
  page.find("tr:last").click_on "Destroy"
  #Then
  page.text.must_include 'not authorized'
  end


  scenario "Visitors should not be able to update a post" do
  #Given a user is signed in as an visitor
  visit new_user_session_path
    fill_in "Email", with: users(:zoo).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When they try to edit a post
  visit post_path(posts(:peditor))
  click_on("Edit")

  fill_in 'Title', with: "Odoyle doesnt rule"

  click_on "Update Post"

  #Then they won't be authorized
  page.text.must_include 'not authorized'
  end


  scenario "Visitors should not be able to create a post" do
  #Given a user is signed in as an visitor
  visit new_user_session_path
    fill_in "Email", with: users(:zoo).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When they try to create a new post
  visit new_post_path
    fill_in 'Title', with: posts(:peditor).title
    fill_in 'Body',  with: posts(:peditor).body
    click_on 'Create Post'
  #Then they won't be authorized
  page.text.must_include 'not authorized'
  end


  # scenario "Visitors should only be able to see published posts" do
  # #Given a user is signed in as an visitor
  # visit new_user_session_path
  #   fill_in "Email", with: users(:zoo).email
  #   fill_in "Password", with: "password"
  #   click_button "Sign in"
  # #When

  # #Then

  #end












end
