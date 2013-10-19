require "test_helper"

feature "CheckForTheme" do
  scenario "check for bootstrap theme loading on the Root Path" do


    #Given bootstrap theme is installed



    #When I visit the root path
    visit root_path


    #Then I have Bootstrap features

    assert page.has_css?('feature_slider')


  end
end
