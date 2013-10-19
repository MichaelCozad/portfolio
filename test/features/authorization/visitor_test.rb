require 'test_helper'

feature "I want to use Pundit to restrict access to the site" do

scenario "Visitors should be able to read all posts" do
  #Given a user is signed in as an visitor
  visit new_user_session_path
    fill_in "Email", with: users(:three).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When

  #Then

  end


  scenario "Visitors should not be able to delete, update or create posts" do
  #Given a user is signed in as an visitor
  visit new_user_session_path
    fill_in "Email", with: users(:three).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When
  visit posts_path
  page.find("tr:last").click_on "Destroy"
  #Then
  page.text.must_include 'not authorized'
  end


  scenario "Visitors should only be able to see published posts" do
  #Given a user is signed in as an visitor
  visit new_user_session_path
    fill_in "Email", with: users(:three).email
    fill_in "Password", with: "password"
    click_button "Sign in"
  #When

  #Then

  end












end
