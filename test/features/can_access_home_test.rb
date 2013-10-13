require "test_helper"

feature "CanAccessHome" do
  scenario "can acces home page" do

    visit root_path
    page.must_have_content "Features"
    page.wont_have_content "Goobye All!"
  end
end
