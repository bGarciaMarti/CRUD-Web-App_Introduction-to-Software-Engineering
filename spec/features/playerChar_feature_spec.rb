require "rails_helper"

context "Login" do
    scenario "should sign up" do
      visit root_path
      click_link 'Sign up'
      within("form") do
        fill_in "Email", with: "testing@test.com"
        fill_in "Password", with: "123456"
        fill_in "Password confirmation", with: "123456"
        click_button "Sign up"
      end
      expect(page).to have_content("Welcome! You have signed up successfully.")
    end

    scenario "should log in" do
      user = FactoryBot.create(:user)
      login_as(user)
      visit root_path
      expect(page).to have_content("Logged in")
    end
  end

#create new project
#stub out with before a new user with a factory

#should succede with all attributes

#should fail if no attributes

#updatedat project do
#let project (project.create. fill in attibutes here)
#(before each) do 
#make a user command thing


