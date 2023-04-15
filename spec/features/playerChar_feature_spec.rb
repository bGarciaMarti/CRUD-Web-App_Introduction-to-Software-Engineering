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
      #sign_in user
      visit root_path
      expect(page).to have_content("Logged in")
    end
end

context "Update project" do 
  let(:valid_attributes) {
  { :name => "Dora", :main_stats => "17", :proficiency => "3", :saving_throws => "charisma" }
  }
  let(:newPlayer) {PlayerCharacter.create(valid_attributes)}
  before(:each) do
    user = FactoryBot.create(:user)
    login_as(user)
    #sign_in user
    visit edit_player_character_path(newPlayer)
  end
  
  # validate updating a name
  scenario "should be successful" do
    within("form") do
      fill_in "Name", with: "Terrabyte"
    end
    click_button "Update Player character"
    expect(page).to have_content("Player character was successfully updated.")
  end
  scenario "should fail" do
    within("form") do
      fill_in "Name", with: ""
    end
    click_button "Update Player character"
    expect(page).to have_content("Name can't be blank")
  end

  # validate updating a main_stat
  scenario "should be successful" do
    within("form") do
      fill_in "Main stats", with: "14"
    end
    click_button "Update Player character"
    expect(page).to have_content("Player character was successfully updated.")
  end
  scenario "should fail" do
    within("form") do
      fill_in "Main stats", with: ""
    end
    click_button "Update Player character"
    expect(page).to have_content("Main stats can't be blank")
  end

  # validate updating a Proficiency
  scenario "should be successful" do
    within("form") do
      fill_in "Proficiency", with: "4"
    end
    click_button "Update Player character"
    expect(page).to have_content("Player character was successfully updated.")
  end
  scenario "should fail" do
    within("form") do
      fill_in "Proficiency", with: ""
    end
    click_button "Update Player character"
    expect(page).to have_content("Proficiency can't be blank")
  end

  # validate updating a Saving throws
  scenario "should be successful" do
    within("form") do
      fill_in "Saving throws", with: "dexterity"
    end
    click_button "Update Player character"
    expect(page).to have_content("Player character was successfully updated.")
  end
  scenario "should fail" do
    within("form") do
      fill_in "Saving throws", with: ""
    end
    click_button "Update Player character"
    expect(page).to have_content("Saving throws can't be blank")
  end
end
