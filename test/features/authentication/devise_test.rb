require 'test_helper'


feature "I want to use Devise to restrict access to the site" do
  scenario "I want to sign up a new user account" do

  # Given a registration form
  visit root_path
  click_on "Sign Up"

  # When I register with valid data
  fill_in "Email", with: "test@example.com"
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
  click_on "Sign up"

  # Then I should be signed up
  page.must_have_content "Welcome! You have signed up successfully"
  page.wont_have_content "There was a problem with your sign up"
  end




  scenario "I want to sign out a user account" do

  # # Given a user is signed in.
  visit root_path
  click_on "Sign Up"
  fill_in "Email", with: users(:one).email
  fill_in "Password", with: users(:one).encrypted_password
  fill_in "Password confirmation", with: users(:one).encrypted_password
  click_on "Sign up"

  # # When they click sign out

  click_on "Sign out"

  # # Then the session should be destroyed
  page.text.must_include "FRANKENFIELD"

  end


  scenario "I want to sign in with an existing user" do

  #Given an existing user
  @user = users(:one)
  visit new_user_session_path
  fill_in "Email",  with: users(:one).email
  fill_in "Password", with: "password"

  #When I click sign in
  click_button "Sign in"

  #Then I should see
  page.text.must_include "FRANKENFIELD"

  end


  scenario "sign in with twitter works" do
    visit root_path
    click_on "Sign in"
    OmniAuth.config.test_mode = true
    Capybara.current_session.driver.request.env['devise.mapping'] = Devise.mappings[:user]
    Capybara.current_session.driver.request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:twitter]
    OmniAuth.config.add_mock(:twitter,
                             {
                              uid: '12345',
                              info: { nickname: "test_twitter_user"},
                              })
    click_on "Sign in with Twitter"
    save_and_open_page
    page.must_have_content "test_twitter_user, you are signed in!"

  end


end
