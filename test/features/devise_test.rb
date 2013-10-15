require 'test_helper'

feature "I want to use Devise to restrict access to the site" do
  scenario "I want to sign up a new user account" do

  #Given a registration form
  visit "/"
  click_on "Sign Up"

  #When I register with valid data
  fill_in "Email", with: "test@example.com"
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
  click_on "Sign up"

  #Then I should be signed up
  page.must_have_content "Welcome! You have signed up successfully"
  page.wont_have_content "There was a problem with your sign up"
  end




  scenario "I want to sign out a user account" do

  #Given


  #When


  #Then

  end


  scenario "I want to sign in with an existing user" do

  #Given


  #When


  #Then


  end



end
