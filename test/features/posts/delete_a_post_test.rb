require "test_helper"

feature "DeleteAPost" do
  scenario "deleting a post will remove it from Posts index page" do


    #Given a user visits the Posts Index page
    visit new_user_session_path
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: "password"
    click_button "Sign in"
    visit posts_path


    #When user click the destroy post link

   #click_link "Destroy"
   first(:link, "Destroy").click

    #Then the index page will not have Post

    page.wont_have_content "Odoyle Rules"

  end
end
