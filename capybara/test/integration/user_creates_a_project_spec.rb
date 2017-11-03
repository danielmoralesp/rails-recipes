require File.expand_path("../../test_helper", __FILE__)

feature "user creates a project" do
  scenario "succesfully creates project" do
    visit root_path
    click_link "Projects"
    click_link "New Projects"
    fill_in "Name", with: "Foo"
    fill_in "Description", with: "Bar"
    click_button "Create Project"
    page.should have_content "Project was successfull created."
  end
end
