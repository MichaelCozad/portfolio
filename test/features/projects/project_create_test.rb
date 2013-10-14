require 'test_helper'

feature "As a site owner, I want to add a portfolio item" do
  scenario "create a project resource with valid data" do


  #Given the user goes to create a new project
  visit projects_path
  click_on "New project"

  fill_in "Name", with: "Faceblock"
  fill_in "Technologies used", with: "Rails, Ruby, Bootstrap, HTML5, CSS3"

  #When the user submits project information
  click_on "Create project"



  #Then the project information should show
  page.text.must_include "Project was successfully added"
  page.text.must_include "Faceblock"
  page.text.must_include "Rails"

  end
end

