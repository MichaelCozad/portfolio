require 'test_helper'


feature "I want to use Devise to restrict access to the site" do
  scenario "I want to sign up a new user account" do

  # Given a registration form
  visit root_path
  click_link "Sign up"

  # When I register with valid data
  fill_in "Email", with: "test@example.com"
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
  click_button "Sign up"

  # Then I should be signed up
  page.must_have_content "Welcome! You have signed up successfully"
  page.wont_have_content "There was a problem with your sign up"
  end




  scenario "I want to sign out a user account" do

  # Given a user is signed in.
  visit root_path
  click_link "Sign up"
  fill_in "Email", with: users(:one).email
  fill_in "Password", with: users(:one).encrypted_password
  fill_in "Password confirmation", with: users(:one).encrypted_password
  click_button "Sign up"

  # When they click sign out

  click_on "Sign out"

  # Then the session should be destroyed
  page.text.must_include "Sign In"

  end


  scenario "I want to sign in with an existing user" do

  #Given an existing user


  #When I click sign in


  #Then I should see


  end



end
