require "application_system_test_case"

class PlayerCharactersTest < ApplicationSystemTestCase
  setup do
    @player_character = player_characters(:one)
  end

  test "visiting the index" do
    visit player_characters_url
    assert_selector "h1", text: "Player Characters"
  end

  test "creating a Player character" do
    visit player_characters_url
    click_on "New Player Character"

    fill_in "Main stats", with: @player_character.main_stats
    fill_in "Name", with: @player_character.name
    fill_in "Proficiency", with: @player_character.proficiency
    fill_in "Saving throws", with: @player_character.saving_throws
    click_on "Create Player character"

    assert_text "Player character was successfully created"
    click_on "Back"
  end

  test "updating a Player character" do
    visit player_characters_url
    click_on "Edit", match: :first

    fill_in "Main stats", with: @player_character.main_stats
    fill_in "Name", with: @player_character.name
    fill_in "Proficiency", with: @player_character.proficiency
    fill_in "Saving throws", with: @player_character.saving_throws
    click_on "Update Player character"

    assert_text "Player character was successfully updated"
    click_on "Back"
  end

  test "destroying a Player character" do
    visit player_characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player character was successfully destroyed"
  end
end
