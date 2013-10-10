require "test_helper"

feature "DeleteAPost" do
  scenario "deleting a post will remove it from Posts index page" do


    #Given a user visits the Posts Index page
    Post.create(title: posts(:cf).title, body: posts(:cf).body)

    visit posts_path


    #When user click the destroy post link

    page.find("tr:last").click_on "Destroy"


    #Then the index page will not have Post


    page.wont_have_content posts(:cf).title
  end
end
