require 'test_helper'


feature "I want to delete a project" do
  scenario "delete a project" do

  #Given existing project
  project = Project.create(name: "Faceblock", technologies_used: "Rails")

  visit projects_path

  #When

  page.find("tr:last").click_on "Destroy"

  #Then I will not see project

  page.wont_have_content "Becoming a Code Fellow"

  end
end
