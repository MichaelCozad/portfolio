require "test_helper"

feature "CheckForBootstrap" do
  scenario "check for bootstrap loading on the Root Path" do


    #Given bootstrap is installed



    #When I visit the root path
    visit root_path


    #Then I have Bootstrap features

    page.has_css?('col-')


  end
end
