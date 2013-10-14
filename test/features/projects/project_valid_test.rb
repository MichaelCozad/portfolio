require 'test_helper'

feature "As a site owner, I want valid data to be submitted" do
  scenario "new project has invalid data" do


  #Given invalid data is entered in a form
  visit new_project_path
  fill_in "Name", with: "Q"


  #When the form is submitted w a short name and missing field
  click_on "Create Project"


  #Then the form should be displayed again with an error message
  current_path.must_match /projects$/
  page.text.must_include "Project could not be saved"
  #page.text.must_include "Name is too short"
  #page.text.must_include "Technologies used is missing"


  end
end
