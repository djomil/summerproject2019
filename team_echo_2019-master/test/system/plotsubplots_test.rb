require "application_system_test_case"

class PlotsubplotsTest < ApplicationSystemTestCase
  setup do
    @plotsubplot = plotsubplots(:one)
  end

  test "visiting the index" do
    visit plotsubplots_url
    assert_selector "h1", text: "Plotsubplots"
  end

  test "creating a Plotsubplot" do
    visit plotsubplots_url
    click_on "New Plotsubplot"

    fill_in "Plot", with: @plotsubplot.plot_id
    fill_in "Plotsubplot", with: @plotsubplot.plotsubplot_id
    fill_in "Subplot", with: @plotsubplot.subplot_id
    click_on "Create Plotsubplot"

    assert_text "Plotsubplot was successfully created"
    click_on "Back"
  end

  test "updating a Plotsubplot" do
    visit plotsubplots_url
    click_on "Edit", match: :first

    fill_in "Plot", with: @plotsubplot.plot_id
    fill_in "Plotsubplot", with: @plotsubplot.plotsubplot_id
    fill_in "Subplot", with: @plotsubplot.subplot_id
    click_on "Update Plotsubplot"

    assert_text "Plotsubplot was successfully updated"
    click_on "Back"
  end

  test "destroying a Plotsubplot" do
    visit plotsubplots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plotsubplot was successfully destroyed"
  end
end
