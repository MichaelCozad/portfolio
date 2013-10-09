require "test_helper"

feature "DeleteAPost" do
  scenario "deleting a post will remove it from Posts index page" do


    #Given a user visits the Posts Index page
    post = Post.create(title: "Becoming a Code Fellow", body: "Means striving for excellence.")

    visit posts_path


    #When user click the destroy post link

    page.find("tr:last").click_on "Destroy"


    #Then the index page will not have Post


    page.wont_have_content "Becoming a Code Fellow"
  end
end
