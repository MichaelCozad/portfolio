require 'test_helper'

feature "As a site owner, I want to add a portfolio item" do
  scenario "create a project resource with valid data" do


  #Given the user goes to create a new project
  visit projects_path
  click_on "New project"

  fill_in "Name", with: "Faceblock"
  fill_in "Technologies used", with: "Rails, Ruby, Bootstrap, HTML5, CSS3"

  #When the user submits project information
  click_on "Create Project"



  #Then the project information should show
  page.text.must_include "Project was successfully added"
  page.text.must_include "Faceblock"
  page.text.must_include "Rails"

  end



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

