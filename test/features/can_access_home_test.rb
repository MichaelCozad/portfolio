require "test_helper"

feature "CanAccessHome" do
  scenario "can acces home page" do

    visit root_path
    page.must_have_content "Michael Frankenfield"
    page.wont_have_content "Goobye All!"
  end
end
