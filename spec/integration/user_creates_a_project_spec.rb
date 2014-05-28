require 'spec_helper'

feature "user creates a project" do
  scenario "successfully creates a project" do
  	visit root_path
  	click_link "Projects"
  	click_link "new Project"
  	fill_in "Name", with: "Foo"
  	fill_in "Description", with: "Bar"
  	click_button "Create Project"
  	page.should have_content "Project was successfully created."  	
  end
 end
