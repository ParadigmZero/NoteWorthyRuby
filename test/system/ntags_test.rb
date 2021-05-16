require "application_system_test_case"

class NtagsTest < ApplicationSystemTestCase
  setup do
    @ntag = ntags(:one)
  end

  test "visiting the index" do
    visit ntags_url
    assert_selector "h1", text: "Ntags"
  end

  test "creating a Ntag" do
    visit ntags_url
    click_on "New Ntag"

    fill_in "Tag", with: @ntag.tag
    click_on "Create Ntag"

    assert_text "Ntag was successfully created"
    click_on "Back"
  end

  test "updating a Ntag" do
    visit ntags_url
    click_on "Edit", match: :first

    fill_in "Tag", with: @ntag.tag
    click_on "Update Ntag"

    assert_text "Ntag was successfully updated"
    click_on "Back"
  end

  test "destroying a Ntag" do
    visit ntags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ntag was successfully destroyed"
  end
end
