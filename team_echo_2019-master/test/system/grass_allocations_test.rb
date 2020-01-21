require "application_system_test_case"

class GrassAllocationsTest < ApplicationSystemTestCase
  setup do
    @grass_allocation = grass_allocations(:one)
  end

  test "visiting the index" do
    visit grass_allocations_url
    assert_selector "h1", text: "Grass Allocations"
  end

  test "creating a Grass allocation" do
    visit grass_allocations_url
    click_on "New Grass Allocation"

    fill_in "D value 1", with: @grass_allocation.d_value_1
    fill_in "D value 2", with: @grass_allocation.d_value_2
    fill_in "Grass allocation", with: @grass_allocation.grass_allocation_id
    fill_in "Grass", with: @grass_allocation.grass_id
    fill_in "Me 1", with: @grass_allocation.me_1
    fill_in "Percentage 100 dm gm1", with: @grass_allocation.percentage_100_dm_gm1
    fill_in "Percentage 100 dm gm2", with: @grass_allocation.percentage_100_dm_gm2
    fill_in "Percentage 100 dm gm3", with: @grass_allocation.percentage_100_dm_gm3
    fill_in "Percentage 100 dm gm4", with: @grass_allocation.percentage_100_dm_gm4
    fill_in "Percentage 100 dm gm5", with: @grass_allocation.percentage_100_dm_gm5
    fill_in "Percentage 100 dm gm6", with: @grass_allocation.percentage_100_dm_gm6
    fill_in "Percentage 100 dm silage1", with: @grass_allocation.percentage_100_dm_silage1
    fill_in "Percentage 100 dm silage2", with: @grass_allocation.percentage_100_dm_silage2
    fill_in "Plotsubplot", with: @grass_allocation.plotsubplot_id
    fill_in "Year observation", with: @grass_allocation.year_observation
    click_on "Create Grass allocation"

    assert_text "Grass allocation was successfully created"
    click_on "Back"
  end

  test "updating a Grass allocation" do
    visit grass_allocations_url
    click_on "Edit", match: :first

    fill_in "D value 1", with: @grass_allocation.d_value_1
    fill_in "D value 2", with: @grass_allocation.d_value_2
    fill_in "Grass allocation", with: @grass_allocation.grass_allocation_id
    fill_in "Grass", with: @grass_allocation.grass_id
    fill_in "Me 1", with: @grass_allocation.me_1
    fill_in "Percentage 100 dm gm1", with: @grass_allocation.percentage_100_dm_gm1
    fill_in "Percentage 100 dm gm2", with: @grass_allocation.percentage_100_dm_gm2
    fill_in "Percentage 100 dm gm3", with: @grass_allocation.percentage_100_dm_gm3
    fill_in "Percentage 100 dm gm4", with: @grass_allocation.percentage_100_dm_gm4
    fill_in "Percentage 100 dm gm5", with: @grass_allocation.percentage_100_dm_gm5
    fill_in "Percentage 100 dm gm6", with: @grass_allocation.percentage_100_dm_gm6
    fill_in "Percentage 100 dm silage1", with: @grass_allocation.percentage_100_dm_silage1
    fill_in "Percentage 100 dm silage2", with: @grass_allocation.percentage_100_dm_silage2
    fill_in "Plotsubplot", with: @grass_allocation.plotsubplot_id
    fill_in "Year observation", with: @grass_allocation.year_observation
    click_on "Update Grass allocation"

    assert_text "Grass allocation was successfully updated"
    click_on "Back"
  end

  test "destroying a Grass allocation" do
    visit grass_allocations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grass allocation was successfully destroyed"
  end
end
