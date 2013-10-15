require "test_helper"

feature "I want to edit a portfolio item so that I can update new project details" do
  scenario "edit and existing project" do


  #Given there's an existing project

  project = Project.create(name: "Faceblock", technologies_used: "Rails")

  visit edit_project_path(projects(:one))



  #When I update project details


  fill_in "Name", with: "Tweeter"

  click_on "Update Project"

  #Then the details are saved to the database

    page.text.must_include "Success"
    page.text.must_include "Tweeter"
    page.text.wont_include "FaceblockTwo"

  end

  scenario "incorrectly editing an existing project" do
  #Given and existing project
  visit edit_project_path(projects(:one))

  #When I submit invalid changes
  fill_in "Name", with: "Err"
  click_on "Update Project"

  #Then the changes should not be saved, and I should try again
  #page.text.must_include "prohibted"
  page.text.must_include "Name is too short"

  end


end
