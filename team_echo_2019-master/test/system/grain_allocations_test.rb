require "application_system_test_case"

class GrainAllocationsTest < ApplicationSystemTestCase
  setup do
    @grain_allocation = grain_allocations(:one)
  end

  test "visiting the index" do
    visit grain_allocations_url
    assert_selector "h1", text: "Grain Allocations"
  end

  test "creating a Grain allocation" do
    visit grain_allocations_url
    click_on "New Grain Allocation"

    fill_in "Grain allocation", with: @grain_allocation.grain_allocation_id
    fill_in "Grain", with: @grain_allocation.grain_id
    fill_in "Grain on ear", with: @grain_allocation.grain_on_ear
    fill_in "K", with: @grain_allocation.k
    fill_in "Length", with: @grain_allocation.length
    fill_in "Mg", with: @grain_allocation.mg
    fill_in "Om", with: @grain_allocation.om
    fill_in "P", with: @grain_allocation.p
    fill_in "Percentage 85 dm grain y", with: @grain_allocation.percentage_85_DM_grain_y
    fill_in "Percentage 85 dm straw y", with: @grain_allocation.percentage_85_DM_straw_y
    fill_in "Percentage crop s", with: @grain_allocation.percentage_crop_s
    fill_in "Percentage prg a", with: @grain_allocation.percentage_prg_a
    fill_in "Percentage prg s", with: @grain_allocation.percentage_prg_s
    fill_in "Percentage rc a", with: @grain_allocation.percentage_rc_a
    fill_in "Percentage rc s", with: @grain_allocation.percentage_rc_s
    fill_in "Percentage tug a", with: @grain_allocation.percentage_tug_a
    fill_in "Percentage tug s", with: @grain_allocation.percentage_tug_s
    fill_in "Percentage tw a", with: @grain_allocation.percentage_tw_a
    fill_in "Percentage tw s", with: @grain_allocation.percentage_tw_s
    fill_in "Percentage wc a", with: @grain_allocation.percentage_wc_a
    fill_in "Percentage wc s", with: @grain_allocation.percentage_wc_s
    fill_in "Ph", with: @grain_allocation.ph
    fill_in "Plotsubplot", with: @grain_allocation.plotsubplot_id
    fill_in "Spec wt", with: @grain_allocation.spec_wt
    fill_in "Tgw", with: @grain_allocation.tgw
    fill_in "Tillers", with: @grain_allocation.tillers
    fill_in "Year observation", with: @grain_allocation.year_observation
    click_on "Create Grain allocation"

    assert_text "Grain allocation was successfully created"
    click_on "Back"
  end

  test "updating a Grain allocation" do
    visit grain_allocations_url
    click_on "Edit", match: :first

    fill_in "Grain allocation", with: @grain_allocation.grain_allocation_id
    fill_in "Grain", with: @grain_allocation.grain_id
    fill_in "Grain on ear", with: @grain_allocation.grain_on_ear
    fill_in "K", with: @grain_allocation.k
    fill_in "Length", with: @grain_allocation.length
    fill_in "Mg", with: @grain_allocation.mg
    fill_in "Om", with: @grain_allocation.om
    fill_in "P", with: @grain_allocation.p
    fill_in "Percentage 85 dm grain y", with: @grain_allocation.percentage_85_DM_grain_y
    fill_in "Percentage 85 dm straw y", with: @grain_allocation.percentage_85_DM_straw_y
    fill_in "Percentage crop s", with: @grain_allocation.percentage_crop_s
    fill_in "Percentage prg a", with: @grain_allocation.percentage_prg_a
    fill_in "Percentage prg s", with: @grain_allocation.percentage_prg_s
    fill_in "Percentage rc a", with: @grain_allocation.percentage_rc_a
    fill_in "Percentage rc s", with: @grain_allocation.percentage_rc_s
    fill_in "Percentage tug a", with: @grain_allocation.percentage_tug_a
    fill_in "Percentage tug s", with: @grain_allocation.percentage_tug_s
    fill_in "Percentage tw a", with: @grain_allocation.percentage_tw_a
    fill_in "Percentage tw s", with: @grain_allocation.percentage_tw_s
    fill_in "Percentage wc a", with: @grain_allocation.percentage_wc_a
    fill_in "Percentage wc s", with: @grain_allocation.percentage_wc_s
    fill_in "Ph", with: @grain_allocation.ph
    fill_in "Plotsubplot", with: @grain_allocation.plotsubplot_id
    fill_in "Spec wt", with: @grain_allocation.spec_wt
    fill_in "Tgw", with: @grain_allocation.tgw
    fill_in "Tillers", with: @grain_allocation.tillers
    fill_in "Year observation", with: @grain_allocation.year_observation
    click_on "Update Grain allocation"

    assert_text "Grain allocation was successfully updated"
    click_on "Back"
  end

  test "destroying a Grain allocation" do
    visit grain_allocations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grain allocation was successfully destroyed"
  end
end
