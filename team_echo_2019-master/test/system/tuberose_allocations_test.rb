require "application_system_test_case"

class TuberoseAllocationsTest < ApplicationSystemTestCase
  setup do
    @tuberose_allocation = tuberose_allocations(:one)
  end

  test "visiting the index" do
    visit tuberose_allocations_url
    assert_selector "h1", text: "Tuberose Allocations"
  end

  test "creating a Tuberose allocation" do
    visit tuberose_allocations_url
    click_on "New Tuberose Allocation"

    fill_in "K", with: @tuberose_allocation.K
    fill_in "Mg", with: @tuberose_allocation.Mg
    fill_in "Om", with: @tuberose_allocation.OM
    fill_in "P", with: @tuberose_allocation.P
    fill_in "Ph", with: @tuberose_allocation.pH
    fill_in "Percentage 100 dm swede leaf dm y", with: @tuberose_allocation.percentage_100_dm_swede_leaf_dm_y
    fill_in "Percentage crop s", with: @tuberose_allocation.percentage_crop_s
    fill_in "Percentage root dm", with: @tuberose_allocation.percentage_root_dm
    fill_in "Percentage root s", with: @tuberose_allocation.percentage_root_s
    fill_in "Percentage tug a", with: @tuberose_allocation.percentage_tug_a
    fill_in "Percentage tug s", with: @tuberose_allocation.percentage_tug_s
    fill_in "Percentage tw a", with: @tuberose_allocation.percentage_tw_a
    fill_in "Percentage tw s", with: @tuberose_allocation.percentage_tw_s
    fill_in "Plotsubplot", with: @tuberose_allocation.plotsubplot_id
    fill_in "Replication", with: @tuberose_allocation.replication
    fill_in "Rotation", with: @tuberose_allocation.rotation
    fill_in "Swede and pots fwt", with: @tuberose_allocation.swede_and_pots_fwt
    fill_in "Tuberose allocation", with: @tuberose_allocation.tuberose_allocation_id
    fill_in "Tuberose", with: @tuberose_allocation.tuberose_id
    fill_in "Year observation", with: @tuberose_allocation.year_observation
    click_on "Create Tuberose allocation"

    assert_text "Tuberose allocation was successfully created"
    click_on "Back"
  end

  test "updating a Tuberose allocation" do
    visit tuberose_allocations_url
    click_on "Edit", match: :first

    fill_in "K", with: @tuberose_allocation.K
    fill_in "Mg", with: @tuberose_allocation.Mg
    fill_in "Om", with: @tuberose_allocation.OM
    fill_in "P", with: @tuberose_allocation.P
    fill_in "Ph", with: @tuberose_allocation.pH
    fill_in "Percentage 100 dm swede leaf dm y", with: @tuberose_allocation.percentage_100_dm_swede_leaf_dm_y
    fill_in "Percentage crop s", with: @tuberose_allocation.percentage_crop_s
    fill_in "Percentage root dm", with: @tuberose_allocation.percentage_root_dm
    fill_in "Percentage root s", with: @tuberose_allocation.percentage_root_s
    fill_in "Percentage tug a", with: @tuberose_allocation.percentage_tug_a
    fill_in "Percentage tug s", with: @tuberose_allocation.percentage_tug_s
    fill_in "Percentage tw a", with: @tuberose_allocation.percentage_tw_a
    fill_in "Percentage tw s", with: @tuberose_allocation.percentage_tw_s
    fill_in "Plotsubplot", with: @tuberose_allocation.plotsubplot_id
    fill_in "Replication", with: @tuberose_allocation.replication
    fill_in "Rotation", with: @tuberose_allocation.rotation
    fill_in "Swede and pots fwt", with: @tuberose_allocation.swede_and_pots_fwt
    fill_in "Tuberose allocation", with: @tuberose_allocation.tuberose_allocation_id
    fill_in "Tuberose", with: @tuberose_allocation.tuberose_id
    fill_in "Year observation", with: @tuberose_allocation.year_observation
    click_on "Update Tuberose allocation"

    assert_text "Tuberose allocation was successfully updated"
    click_on "Back"
  end

  test "destroying a Tuberose allocation" do
    visit tuberose_allocations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tuberose allocation was successfully destroyed"
  end
end
