require "application_system_test_case"

class GrainsTest < ApplicationSystemTestCase
  setup do
    @grain = grains(:one)
  end

  test "visiting the index" do
    visit grains_url
    assert_selector "h1", text: "Grains"
  end

  test "creating a Grain" do
    visit grains_url
    click_on "New Grain"

    fill_in "Grain", with: @grain.grain_id
    fill_in "Grain type", with: @grain.grain_type
    click_on "Create Grain"

    assert_text "Grain was successfully created"
    click_on "Back"
  end

  test "updating a Grain" do
    visit grains_url
    click_on "Edit", match: :first

    fill_in "Grain", with: @grain.grain_id
    fill_in "Grain type", with: @grain.grain_type
    click_on "Update Grain"

    assert_text "Grain was successfully updated"
    click_on "Back"
  end

  test "destroying a Grain" do
    visit grains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grain was successfully destroyed"
  end
end
