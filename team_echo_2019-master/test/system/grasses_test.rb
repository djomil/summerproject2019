require "application_system_test_case"

class GrassesTest < ApplicationSystemTestCase
  setup do
    @grass = grasses(:one)
  end

  test "visiting the index" do
    visit grasses_url
    assert_selector "h1", text: "Grasses"
  end

  test "creating a Grass" do
    visit grasses_url
    click_on "New Grass"

    fill_in "Grass", with: @grass.grass_id
    fill_in "Grass type", with: @grass.grass_type
    click_on "Create Grass"

    assert_text "Grass was successfully created"
    click_on "Back"
  end

  test "updating a Grass" do
    visit grasses_url
    click_on "Edit", match: :first

    fill_in "Grass", with: @grass.grass_id
    fill_in "Grass type", with: @grass.grass_type
    click_on "Update Grass"

    assert_text "Grass was successfully updated"
    click_on "Back"
  end

  test "destroying a Grass" do
    visit grasses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grass was successfully destroyed"
  end
end
