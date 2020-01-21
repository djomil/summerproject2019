require "application_system_test_case"

class TuberosesTest < ApplicationSystemTestCase
  setup do
    @tuberose = tuberoses(:one)
  end

  test "visiting the index" do
    visit tuberoses_url
    assert_selector "h1", text: "Tuberoses"
  end

  test "creating a Tuberose" do
    visit tuberoses_url
    click_on "New Tuberose"

    fill_in "Tuberose", with: @tuberose.tuberose_id
    fill_in "Tuberose type", with: @tuberose.tuberose_type
    click_on "Create Tuberose"

    assert_text "Tuberose was successfully created"
    click_on "Back"
  end

  test "updating a Tuberose" do
    visit tuberoses_url
    click_on "Edit", match: :first

    fill_in "Tuberose", with: @tuberose.tuberose_id
    fill_in "Tuberose type", with: @tuberose.tuberose_type
    click_on "Update Tuberose"

    assert_text "Tuberose was successfully updated"
    click_on "Back"
  end

  test "destroying a Tuberose" do
    visit tuberoses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tuberose was successfully destroyed"
  end
end
