require 'test_helper'

feature "I want to view an individual project" do
  scenario "view an indvidual project page" do

  #Given fixtures



  #When
  visit project_path(projects(:one))

  #Then I see the project details
  page.text.must_include "Code Fellows Portfolio"


  end
end
